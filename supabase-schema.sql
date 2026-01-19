-- Couple HQ Database Schema for Supabase
-- Run this script in your Supabase SQL Editor

-- Enable UUID extension (if not already enabled)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create couples table
CREATE TABLE IF NOT EXISTS couples (
  id TEXT PRIMARY KEY,
  pin_hash TEXT,
  data JSONB NOT NULL DEFAULT '{}'::jsonb,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Create index on updated_at for faster queries
CREATE INDEX IF NOT EXISTS idx_couples_updated_at ON couples(updated_at DESC);

-- Enable Row Level Security (RLS)
ALTER TABLE couples ENABLE ROW LEVEL SECURITY;

-- Create policy: Anyone can read couple data if they know the ID
CREATE POLICY "Anyone can read couples"
  ON couples
  FOR SELECT
  USING (true);

-- Create policy: Anyone can insert new couples
CREATE POLICY "Anyone can insert couples"
  ON couples
  FOR INSERT
  WITH CHECK (true);

-- Create policy: Anyone can update couples (PIN verification happens in app)
CREATE POLICY "Anyone can update couples"
  ON couples
  FOR UPDATE
  USING (true)
  WITH CHECK (true);

-- Create policy: No one can delete couples (optional - remove if you want deletion)
CREATE POLICY "No one can delete couples"
  ON couples
  FOR DELETE
  USING (false);

-- Create function to automatically update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to call the function before update
DROP TRIGGER IF EXISTS update_couples_updated_at ON couples;
CREATE TRIGGER update_couples_updated_at
  BEFORE UPDATE ON couples
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Enable Realtime for couples table (for live sync between devices)
ALTER PUBLICATION supabase_realtime ADD TABLE couples;

-- Optional: Create a function to clean up old couples (run manually or via cron)
CREATE OR REPLACE FUNCTION cleanup_old_couples(days_old INTEGER DEFAULT 365)
RETURNS INTEGER AS $$
DECLARE
  deleted_count INTEGER;
BEGIN
  DELETE FROM couples
  WHERE updated_at < NOW() - (days_old || ' days')::INTERVAL;
  
  GET DIAGNOSTICS deleted_count = ROW_COUNT;
  RETURN deleted_count;
END;
$$ LANGUAGE plpgsql;

-- Example usage: SELECT cleanup_old_couples(365); -- Delete couples not updated in 1 year

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_couples_created_at ON couples(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_couples_data_gin ON couples USING GIN (data);

-- Grant necessary permissions (Supabase handles this automatically, but just in case)
GRANT ALL ON couples TO anon, authenticated;

-- Success message
DO $$
BEGIN
  RAISE NOTICE 'Couple HQ database schema created successfully!';
  RAISE NOTICE 'Total tables: %', (SELECT COUNT(*) FROM information_schema.tables WHERE table_name = 'couples');
  RAISE NOTICE 'Realtime enabled: Check Supabase Dashboard > Database > Replication';
END $$;
