import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom'
import { CoupleProvider } from './contexts/CoupleContext'
import CoupleApp from './CoupleApp'
import CreateCouple from './pages/CreateCouple'

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* Landing/Create page */}
        <Route path="/" element={<CreateCouple />} />
        
        {/* Couple dashboard - all routes under /c/:coupleId */}
        <Route path="/c/:coupleId/*" element={
          <CoupleProvider>
            <CoupleApp />
          </CoupleProvider>
        } />
        
        {/* Redirect old routes */}
        <Route path="*" element={<Navigate to="/" replace />} />
      </Routes>
    </BrowserRouter>
  )
}
