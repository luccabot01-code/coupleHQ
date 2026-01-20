# Couple HQ - Çiftler İçin Dijital Hayat Planlayıcı

Couple HQ, çiftlerin hayatlarını birlikte organize etmelerine yardımcı olan kapsamlı bir dijital planlama platformudur.

## 🎯 Özellikler

### Temel Özellikler
- ✅ **Görev Yönetimi** - Alt görevler, öncelikler, kategoriler
- 💰 **Bütçe Planlama** - Gelir/gider takibi, kategori bazlı bütçeleme
- 🎯 **Hedef Takibi** - Finansal hedefler, ilerleme takibi
- 📅 **Takvim** - Etkinlik yönetimi, hatırlatıcılar
- 🎁 **İstek Listesi** - Ürün takibi, önceliklendirme
- 📸 **Anılar** - Timeline görünümü, özel anlar
- 🛒 **Alışveriş Listeleri** - Çoklu liste desteği
- 💌 **Aşk Notları** - Partner'lar arası mesajlaşma
- ✨ **Alışkanlık Takibi** - Günlük/haftalık alışkanlıklar
- 💡 **Randevu Fikirleri** - Aktivite önerileri, puanlama

### Teknik Özellikler
- 🔒 **Güvenli & İzole** - Her çift için benzersiz URL ve veri
- 📱 **PWA Desteği** - Mobil uygulama gibi çalışır
- 🌐 **Offline Çalışma** - İnternetsiz kullanım
- 🔄 **Otomatik Senkronizasyon** - Online/offline veri senkronizasyonu
- 🔐 **PIN Koruması** - İsteğe bağlı güvenlik
- 💾 **IndexedDB** - Yerel veri saklama
- ☁️ **API Entegrasyonu** - Backend senkronizasyonu

## 🚀 Kurulum

```bash
# Bağımlılıkları yükle
npm install

# Geliştirme sunucusunu başlat
npm run dev

# Production build
npm run build
```

## 📁 Proje Yapısı

```
src/
├── components/          # Yeniden kullanılabilir bileşenler
│   ├── Layout.jsx      # Ana layout
│   ├── PinModal.jsx    # PIN doğrulama
│   ├── SyncStatus.jsx  # Senkronizasyon durumu
│   └── ...
├── contexts/           # React Context'ler
│   └── CoupleContext.jsx  # Çift verisi yönetimi
├── lib/                # Yardımcı kütüphaneler
│   ├── api.js         # API istekleri
│   ├── db.js          # IndexedDB işlemleri
│   └── sync.js        # Senkronizasyon mantığı
├── pages/             # Sayfa bileşenleri
│   ├── Dashboard.jsx
│   ├── Tasks.jsx
│   ├── Budget.jsx
│   ├── Goals.jsx
│   ├── Calendar.jsx
│   ├── Wishlist.jsx
│   ├── Memories.jsx
│   ├── Shopping.jsx
│   ├── LoveNotes.jsx
│   ├── Habits.jsx
│   ├── DateIdeas.jsx
│   ├── Settings.jsx
│   ├── Profile.jsx
│   ├── LandingPage.jsx
│   └── CreateCouple.jsx
├── store/             # Zustand store
│   └── useStore.js
├── App.jsx            # Ana uygulama
├── CoupleApp.jsx      # Çift dashboard'u
└── main.jsx           # Giriş noktası
```

## 🔗 URL Yapısı

- `/` - Landing page
- `/create` - Yeni çift oluştur
- `/c/{coupleId}` - Çift dashboard'u
- `/c/{coupleId}/tasks` - Görevler
- `/c/{coupleId}/budget` - Bütçe
- `/c/{coupleId}/goals` - Hedefler
- ... (diğer sayfalar)

## 💾 Veri Yönetimi

### Yerel Depolama (IndexedDB)
- Her çiftin verisi izole şekilde saklanır
- Offline çalışma için tam destek
- Otomatik yedekleme

### API Senkronizasyonu
- Online olduğunda otomatik senkronizasyon
- Çakışma çözümü (server öncelikli)
- Offline değişiklikler kuyruğa alınır

### Veri Güvenliği
- Her çift için benzersiz ID
- İsteğe bağlı PIN koruması
- Email doğrulama (opsiyonel)

## 🛠️ Teknolojiler

- **React 18** - UI framework
- **Vite** - Build tool
- **Zustand** - State management
- **React Router** - Routing
- **Tailwind CSS** - Styling
- **Lucide React** - Icons
- **IndexedDB (idb)** - Local storage
- **Vite PWA Plugin** - Progressive Web App

## 📱 PWA Özellikleri

- Offline çalışma
- Ana ekrana eklenebilir
- Push bildirimleri (gelecekte)
- Hızlı yükleme
- Otomatik güncelleme

## 🎨 Tema & Özelleştirme

- Açık/koyu tema desteği
- Partner avatarları ve renkleri
- Özelleştirilebilir kategoriler
- Çoklu dil desteği (TR/EN)

## 🔐 Güvenlik

- Her çift için benzersiz URL
- Veri izolasyonu
- PIN koruması
- Email doğrulama
- HTTPS zorunlu (production)

## 📊 Etsy Entegrasyonu

### Satış Modeli
1. Müşteri Etsy'den satın alır
2. Benzersiz link oluşturulur: `https://couplehq.app/c/{uniqueId}`
3. Link müşteriye gönderilir
4. Müşteri link ile erişir, veri tamamen izole

### Özellikler
- Her satın alma = Yeni izole alan
- Teknik bilgi gerektirmez
- Anında kullanıma hazır
- Ömür boyu erişim

## 🌐 Deployment

**Quick Start**: See [docs/DEPLOY_NOW.md](docs/DEPLOY_NOW.md) for 5-minute deployment guide.

**Full Documentation**: See [docs/DEPLOYMENT_INDEX.md](docs/DEPLOYMENT_INDEX.md) for all deployment guides.

### Quick Deploy to Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/YOUR_USERNAME/couple-hq)

1. Click the button above
2. Connect your GitHub account
3. Deploy!

**Demo URL**: `https://your-project.vercel.app/c/maryjohn`

## 📝 Lisans

Bu proje özel bir üründür. Tüm hakları saklıdır.

## 🤝 Destek

Sorularınız için: sahinturkzehra@gmail.com

## 🛍️ Mağaza

Etsy mağazamızı ziyaret edin: [etsy.com/shop/FlorMontana](https://etsy.com/shop/FlorMontana)

---

Made with ❤️ for couples
