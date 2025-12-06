# Utila Vacation App

A comprehensive iPhone app for planning and enjoying your vacation on Utila, Honduras - the scuba diving capital of the Caribbean!

## Features

### 🍴 Restaurants
- Browse local restaurants and eateries
- View cuisine types, price ranges, and locations
- Read detailed descriptions and specialties
- Contact information and operating hours
- From breakfast cafes to BBQ joints and beachfront dining

### 🏄 Activities
- Discover exciting activities on the island
- Snorkeling, sunset cruises, kayaking, and more
- Detailed information including duration, difficulty, and cost
- Helpful tips for each activity
- Filter by category (Water Sports, Eco-Tourism, Relaxation, Adventure)

### ☀️ Weather
- Current weather conditions
- 7-day forecast
- Diving-specific information:
  - Water temperature
  - Underwater visibility
  - Diving condition indicators
- Wind speed and humidity

### 🤿 Diving Locations
- Comprehensive guide to Utila's famous dive sites
- Depth ranges and difficulty levels
- Marine life you can expect to see
- Site features (walls, caves, swim-throughs, wrecks)
- Best diving conditions for each site
- Popular sites include:
  - The Maze
  - Blackish Point
  - Halliburton Wreck
  - Airport Caves
  - And more!

### 💡 Tips & Trips
**Vacation Tips:**
- Money and currency advice
- Transportation options
- Health and safety information
- Diving insurance requirements
- Local etiquette and culture
- Packing recommendations
- Best time to visit

**Organized Trips:**
- Whale shark snorkel adventures
- PADI dive certifications
- Fishing charters
- Island hopping tours
- Yoga and paddleboard sessions
- Jungle exploration

## Technical Details

- **Platform:** iOS 16.0+
- **Framework:** SwiftUI
- **Architecture:** MVVM pattern
- **Language:** Swift 5.0

## Project Structure

```
UtilaVacationApp/
├── UtilaVacationApp/
│   ├── UtilaVacationAppApp.swift      # Main app entry point
│   ├── ContentView.swift               # Main tab navigation
│   ├── Models.swift                    # Data models
│   ├── SampleData.swift               # Sample/demo data
│   ├── RestaurantsView.swift          # Restaurant listings
│   ├── ActivitiesView.swift           # Activity listings
│   ├── WeatherView.swift              # Weather and conditions
│   ├── DivingView.swift               # Dive site information
│   ├── TipsAndTripsView.swift         # Tips and organized trips
│   └── Info.plist                     # App configuration
└── UtilaVacationApp.xcodeproj/        # Xcode project file
```

## Installation

1. Open `UtilaVacationApp.xcodeproj` in Xcode
2. Select your target device or simulator
3. Build and run the project (⌘R)

## Usage

The app uses a tab-based navigation system:

1. **Restaurants Tab** - Browse and view detailed restaurant information
2. **Activities Tab** - Explore available activities with difficulty ratings
3. **Weather Tab** - Check current conditions and diving forecasts
4. **Diving Tab** - Research dive sites before your adventure
5. **Tips & Trips Tab** - Toggle between vacation tips and organized trip options

## Data

Currently, the app uses curated sample data for demonstration. Future versions could integrate:
- Live weather API
- Real-time diving conditions
- User reviews and ratings
- Booking integrations
- Interactive maps
- Offline availability

## About Utila

Utila is one of the Bay Islands of Honduras, located in the Caribbean Sea. It's world-famous for:
- Affordable PADI dive certifications
- Whale shark encounters (seasonal)
- Pristine coral reefs
- Laid-back island atmosphere
- Beautiful beaches and clear waters

## Future Enhancements

- [ ] Integration with live weather APIs
- [ ] User favorites and bookmarks
- [ ] Interactive maps with GPS navigation
- [ ] Photo galleries for each location
- [ ] User reviews and ratings
- [ ] Offline mode with downloaded content
- [ ] Push notifications for weather alerts
- [ ] Booking integrations for restaurants and trips
- [ ] Social sharing features
- [ ] Multi-language support (English/Spanish)

## Contributing

This is a personal vacation planning app. Feel free to fork and customize for your own trips!

## License

Created for personal use during Utila vacations.

---

**Enjoy your Utila vacation!** 🌴🤿🌊
