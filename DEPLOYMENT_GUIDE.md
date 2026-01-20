# 🚀 Couple HQ - Deployment Guide

## ✅ Production Ready

Build Status: ✅ PASSED (719.50 KB)  
Supabase: ✅ Configured (optional)  
PWA: ✅ Enabled  
Realtime Sync: ✅ Ready

---

## 📋 Pre-Deployment Checklist

- [x] Build test passed
- [x] All features working
- [x] 10 language support
- [x] Offline functionality (IndexedDB)
- [x] Realtime sync ready (Supabase)
- [x] PWA configured
- [x] Mobile responsive
- [x] Dark/Light theme

---

## 🚀 Deploy to Vercel (Recommended)

### Step 1: Push to GitHub

```bash
# Initialize git (if not already)
git init

# Add all files
git add .

# Commit
git commit -m "Production ready - Couple HQ with Supabase sync"

# Add remote (replace with your repo URL)
git remote add origin https://github.com/YOUR_USERNAME/couple-hq.git

# Push
git branch -M main
git push -u origin main
```

### Step 2: Setup Supabase (Optional but Recommended)

**Why Supabase?**
- ✅ Realtime sync between partners
- ✅ Multi-device support
- ✅ Automatic backups
- ✅ Free tier: 500 MB storage

**Setup:**

1. Go to https://supabase.com
2. Create new project
3. Go to SQL Editor
4. Run the SQL from `supabase-schema.sql`
5. Get your credentials:
   - Project URL: `https://xxxxx.supabase.co`
   - Anon Key: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...`

### Step 3: Deploy to Vercel

1. Go to https://vercel.com/new
2. Import your GitHub repository
3. Configure:
   ```
   Framework: Vite
   Build Command: npm run build
   Output Directory: dist
   Install Command: npm install
   Node Version: 18.x
   ```

4. **Add Environment Variables:**
   ```
   VITE_SUPABASE_URL=https://xxxxx.supabase.co
   VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```
   
   ⚠️ **Important:** If you skip this, app will work in local-only mode (no sync between devices)

5. Click **Deploy**

### Step 4: Test Deployment

After deployment, test:

1. **Create Couple:**
   - Go to `https://your-app.vercel.app`
   - Create new couple
   - Copy the URL: `https://your-app.vercel.app/c/abc123xyz`

2. **Test Realtime Sync (if Supabase enabled):**
   - Open URL on Phone
   - Open same URL on Computer
   - Add task on Phone
   - See it appear on Computer (1-2 seconds)

3. **Test Offline:**
   - Open DevTools (F12)
   - Network tab → Offline
   - Navigate pages → Should work
   - Add data → Saved locally
   - Go online → Auto syncs to Supabase

---

## 🌐 Alternative: Deploy to Netlify

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login
netlify login

# Deploy
netlify deploy --prod
```

Add environment variables in Netlify dashboard.

---

## 🔧 Environment Variables Explained

### Required for Supabase Sync:

```env
VITE_SUPABASE_URL=https://xxxxx.supabase.co
VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

### Optional (Analytics):

```env
VITE_GA_ID=G-XXXXXXXXXX
VITE_SENTRY_DSN=https://xxxxx@sentry.io/xxxxx
```

---

## 📱 How Partners Share Data

### With Supabase (Recommended):

**Partner 1:**
1. Creates couple at: `https://app.vercel.app`
2. Gets URL: `https://app.vercel.app/c/abc123xyz`
3. Shares URL with Partner 2

**Partner 2:**
1. Opens: `https://app.vercel.app/c/abc123xyz`
2. Sees same data
3. Makes changes
4. Partner 1 sees changes in realtime ✨

### Without Supabase (Local Only):

- Each device has separate data
- No sync between devices
- Works offline only
- Good for demo/testing

---

## 🎯 Features After Deployment

### ✅ With Supabase:
- Realtime sync between partners
- Multi-device support
- Automatic cloud backup
- Works offline (syncs when online)
- Secure data storage

### ✅ Without Supabase:
- Local-only storage (IndexedDB)
- Works offline
- No sync between devices
- No cloud backup
- Still fully functional

---

## 🔒 Security Features

- ✅ Optional PIN protection
- ✅ Hashed PIN storage (SHA-256)
- ✅ No authentication required (privacy-first)
- ✅ Unique couple IDs (12 characters)
- ✅ Data encrypted in transit (HTTPS)

---

## 📊 Performance

**Build Stats:**
- Total Size: 719.50 KB
- Gzipped: ~115 KB
- Modules: 1444
- Build Time: ~15s

**Lighthouse Scores (Expected):**
- Performance: 90+
- Accessibility: 95+
- Best Practices: 95+
- SEO: 100

---

## 🆘 Troubleshooting

### Build Fails on Vercel?
- Check Node version is 18+
- Verify all dependencies in package.json
- Check build logs for errors

### Realtime Sync Not Working?
- Verify Supabase environment variables
- Check Supabase project is active
- Verify SQL schema is created
- Check browser console for errors

### White Screen After Deploy?
- Check browser console (F12)
- Verify all assets loaded
- Clear browser cache
- Check Vercel deployment logs

### Data Not Syncing?
- Verify both devices use same URL
- Check internet connection
- Verify Supabase credentials
- Check Supabase dashboard for data

---

## 📞 Support

**Email:** sahinturkzehra@gmail.com  
**Etsy:** https://etsy.com/shop/FlorMontana

---

## 🎉 Post-Deployment

Your app is now live! Share the couple URL with your partner:

```
https://your-app.vercel.app/c/your-couple-id
```

Both partners can:
- ✅ Add/edit tasks, goals, notes
- ✅ Upload photos
- ✅ Track budget
- ✅ Create memories
- ✅ See changes in realtime
- ✅ Work offline

---

**Ready to deploy!** 🚀

Just push to GitHub and import to Vercel with Supabase environment variables.
