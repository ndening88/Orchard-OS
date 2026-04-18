# 🌰 Orchard OS — Walnut Farm Manager

A smart walnut farm management PWA with live weather, AI advisor, activity planning, field logs, and farm data tracking.

---

## 🚀 Deploy to Vercel (20 minutes, free)

### Step 1 — Upload to GitHub

1. Go to [github.com](https://github.com) → **New repository**
2. Name it `orchard-os`, set to **Public**, click **Create repository**
3. On the next screen, click **uploading an existing file**
4. Drag **all the files from this folder** into the upload area
5. Click **Commit changes**

### Step 2 — Deploy on Vercel

1. Go to [vercel.com](https://vercel.com) and sign in with GitHub
2. Click **Add New → Project**
3. Find `orchard-os` in your repository list → click **Import**
4. Vercel auto-detects Vite. Leave all settings as default.
5. Click **Deploy** → wait ~60 seconds
6. You'll get a URL like `https://orchard-os-abc123.vercel.app` ✅

### Step 3 — Install on iPhone / iPad

1. Open the URL in **Safari** (must be Safari, not Chrome)
2. Tap the **Share** button (box with arrow)
3. Tap **Add to Home Screen**
4. Name it "Orchard OS" → tap **Add**
5. The app now appears on your home screen and launches full-screen ✅

### Step 4 — Install on Android

1. Open the URL in **Chrome**
2. Tap the three-dot menu → **Add to Home screen** (or look for the install banner)
3. Tap **Install** ✅

---

## 🔄 Updating the app

Any time you push changes to GitHub, Vercel automatically rebuilds and redeploys in ~60 seconds. Users get the update next time they open the app.

---

## 💻 Running locally (for development)

```bash
npm install
npm run dev
```

Then open http://localhost:5173

---

## 📁 Project structure

```
orchard-os/
├── index.html          # Entry HTML with PWA meta tags
├── vite.config.js      # Vite + PWA plugin config
├── vercel.json         # Vercel routing for SPA
├── package.json        # Dependencies
├── public/
│   ├── icon-192.png    # PWA icon (small)
│   ├── icon-512.png    # PWA icon (large)
│   ├── apple-touch-icon.png  # iOS home screen icon
│   ├── favicon.svg     # Browser tab icon
│   └── favicon.ico     # Fallback icon
└── src/
    ├── main.jsx        # React entry point
    └── App.jsx         # Full application (Orchard OS)
```

---

## 🌐 Custom domain (optional, ~$15/year)

1. Buy a domain (e.g. `orchardos.nz`) from [Namecheap](https://namecheap.com) or [Google Domains](https://domains.google)
2. In Vercel → your project → **Settings → Domains**
3. Add your domain and follow the DNS instructions
4. Done — your app is now at `https://orchardos.nz`

---

## ✅ What works offline

Once installed as a PWA, Orchard OS works without internet for:
- Viewing all existing data (activities, logs, farm data, photos)
- Navigating between all sections
- Reading weather forecast (cached for up to 3 hours)

Requires internet for:
- Refreshing the weather forecast
- AI Advisor responses (Anthropic API)

---

## 🔧 Adding team members

Open the app → **Settings → Team** → add names and roles.
Each device selects "who is using the app" on first launch.
That selection is remembered on that device.

---

## 📱 Tested on

- iPhone (iOS 16+) — Safari
- iPad (iPadOS 16+) — Safari, portrait and landscape
- Android — Chrome
- Desktop — Chrome, Safari, Firefox

---

*Built with React + Vite + vite-plugin-pwa. Weather data from Open-Meteo (free, no key required). AI powered by Anthropic Claude.*
