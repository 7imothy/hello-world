# Utila Vacation Web App 🏝️

A mobile-optimized Progressive Web App (PWA) for planning your perfect vacation to Utila, Honduras - the scuba diving capital of the Caribbean!

## ✨ Features

### 🍴 Restaurants
- 5 curated local restaurants
- Cuisine types, price ranges, locations
- Specialties, hours, and contact info
- From breakfast cafes to beachfront dining

### 🏄 Activities
- 6 exciting activities and excursions
- Snorkeling, kayaking, wildlife tours
- Duration, difficulty, and cost info
- Helpful tips for each activity

### ☀️ Weather
- Current conditions and forecast
- 7-day weather outlook
- Diving-specific conditions
- Water temperature and visibility

### 🤿 Diving Locations
- 6 famous dive sites
- Depth ranges and difficulty levels
- Marine life and site features
- Best diving conditions

### 💡 Tips & Trips
- 10 essential vacation tips
- Money, safety, diving, packing advice
- 6 organized trip options
- Whale shark tours, certifications, charters

## 📱 How to Install on Your iPhone

### Method 1: Direct Install (Safari)

1. **Open in Safari** (must use Safari, not Chrome)
   - Go to the URL where this app is hosted
   - Example: `https://your-username.github.io/UtilaVacationWebApp/`

2. **Add to Home Screen**
   - Tap the Share button (square with arrow pointing up)
   - Scroll down and tap "Add to Home Screen"
   - Name it "Utila Vacation" (or your preference)
   - Tap "Add" in the top right

3. **Open the App**
   - Find the "Utila Vacation" icon on your home screen
   - Tap to open - it will run like a native app!
   - Works offline once installed!

### Method 2: Install Prompt (Auto)

When you first visit the site, you may see an "Install App" banner at the top:
- Tap "Install" to add directly to home screen
- If dismissed, use Method 1 above

## 🚀 Hosting Options (How to Get a URL)

### Option A: GitHub Pages (FREE & Easy)

1. **Push to GitHub**
   ```bash
   # Already done! This is in your repo
   ```

2. **Enable GitHub Pages**
   - Go to your GitHub repository
   - Click "Settings" → "Pages"
   - Under "Source", select "Deploy from branch"
   - Select your branch: `claude/utila-vacation-app-01MzRUVpMngRT6zJfU3YUgjn`
   - Folder: `/UtilaVacationWebApp` (if available) or `/ (root)`
   - Click "Save"

3. **Access Your App**
   - Your app will be live at:
   - `https://7imothy.github.io/hello-world/UtilaVacationWebApp/`
   - (May take 1-2 minutes to deploy)

### Option B: Netlify (FREE - Recommended)

1. **Go to Netlify**
   - Visit [netlify.com](https://netlify.com)
   - Sign up with GitHub (free)

2. **Deploy**
   - Click "Add new site" → "Import an existing project"
   - Choose GitHub
   - Select your repository
   - Build settings:
     - Build command: (leave blank)
     - Publish directory: `UtilaVacationWebApp`
   - Click "Deploy"

3. **Get Your URL**
   - You'll get a URL like: `https://random-name.netlify.app`
   - You can customize this in Site Settings
   - Example: `https://utila-vacation.netlify.app`

### Option C: Vercel (FREE)

1. **Go to Vercel**
   - Visit [vercel.com](https://vercel.com)
   - Sign up with GitHub

2. **Import Project**
   - Click "New Project"
   - Import your GitHub repository
   - Framework: "Other"
   - Root directory: `UtilaVacationWebApp`
   - Click "Deploy"

3. **Access**
   - Get URL like: `https://your-project.vercel.app`

### Option D: Simple HTTP Server (Local Testing)

Test locally before deploying:

```bash
# In the UtilaVacationWebApp directory
python3 -m http.server 8000

# Or with Node.js
npx serve

# Or with PHP
php -S localhost:8000
```

Then open `http://localhost:8000` on your phone (must be on same WiFi)

## 📂 Project Structure

```
UtilaVacationWebApp/
├── index.html              # Main HTML structure
├── style.css               # Mobile-first responsive styles
├── app.js                  # App logic and interactivity
├── data.js                 # All restaurant, activity, diving data
├── manifest.json           # PWA manifest for installation
├── service-worker.js       # Offline caching support
├── icon-192.png           # App icon (192x192)
├── icon-512.png           # App icon (512x512)
└── README.md              # This file
```

## 🎨 Features

- ✅ **Progressive Web App (PWA)** - Install to home screen
- ✅ **Offline Support** - Works without internet
- ✅ **Mobile-First Design** - Optimized for phones
- ✅ **Native-Like Feel** - Tab navigation, smooth animations
- ✅ **Fast & Lightweight** - No framework overhead
- ✅ **Responsive** - Works on all screen sizes
- ✅ **No App Store Required** - Direct web installation

## 🛠️ Technology Stack

- Pure HTML5
- CSS3 with CSS Variables
- Vanilla JavaScript (ES6+)
- Service Worker API (offline support)
- Web App Manifest (PWA installation)

## 🔄 Updates

To update the app content:

1. Edit `data.js` to add/modify restaurants, activities, etc.
2. Push changes to GitHub
3. Users will get updates automatically when they revisit

## 📱 Screenshots

The app has 5 main sections accessible via bottom navigation:
- **Restaurants** - Browse and view details
- **Activities** - Find things to do
- **Weather** - Check conditions
- **Diving** - Explore dive sites
- **Tips** - Get vacation advice and book trips

## 🌐 Browser Compatibility

- ✅ iOS Safari 11.3+
- ✅ Android Chrome 40+
- ✅ Desktop browsers (Chrome, Firefox, Safari, Edge)

## 💾 Offline Capability

Once installed:
- All content cached locally
- Works without internet connection
- Perfect for when you're on the island with limited WiFi!

## 🤝 Contributing

Feel free to fork and customize for your own trips!

## 📝 License

Created for personal vacation planning. Enjoy your Utila vacation! 🌴🤿🌊

---

## Quick Start Checklist

- [ ] Choose hosting option (GitHub Pages recommended)
- [ ] Deploy the app
- [ ] Get your URL
- [ ] Open URL in Safari on your iPhone
- [ ] Tap Share → Add to Home Screen
- [ ] Enjoy your vacation! 🎉
