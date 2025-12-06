import Foundation

class SampleData {

    // MARK: - Restaurants
    static let restaurants = [
        Restaurant(
            name: "Bundu Café",
            cuisine: "International/Breakfast",
            description: "Popular breakfast and brunch spot known for amazing coffee, fresh smoothie bowls, and healthy options. A favorite among locals and tourists alike.",
            priceRange: "$$",
            location: "East Harbour",
            phone: "+504 3345-1234",
            hours: "7:00 AM - 3:00 PM",
            specialties: ["Açai Bowls", "Fresh Smoothies", "Eggs Benedict", "Local Coffee"],
            coordinates: Coordinates(latitude: 16.1031, longitude: -86.8942)
        ),
        Restaurant(
            name: "RJ's BBQ",
            cuisine: "BBQ/American",
            description: "Legendary BBQ spot serving slow-smoked meats and authentic American BBQ. Don't miss their pulled pork and ribs!",
            priceRange: "$$$",
            location: "Sandy Bay",
            phone: "+504 3345-5678",
            hours: "5:00 PM - 10:00 PM (Closed Monday)",
            specialties: ["Pulled Pork", "Baby Back Ribs", "Brisket", "Mac & Cheese"],
            coordinates: Coordinates(latitude: 16.1015, longitude: -86.8920)
        ),
        Restaurant(
            name: "Mango Inn Restaurant",
            cuisine: "Caribbean/Seafood",
            description: "Beachfront dining with fresh seafood and Caribbean flavors. Beautiful sunset views and relaxed atmosphere.",
            priceRange: "$$",
            location: "Sandy Bay Beach",
            phone: "+504 2425-3335",
            hours: "7:00 AM - 9:00 PM",
            specialties: ["Whole Red Snapper", "Coconut Shrimp", "Ceviche", "Rum Punch"],
            coordinates: Coordinates(latitude: 16.1008, longitude: -86.8905)
        ),
        Restaurant(
            name: "Skid Row's",
            cuisine: "Sports Bar/American",
            description: "Lively sports bar with great burgers, cold beer, and multiple TVs showing international sports. Popular gathering spot.",
            priceRange: "$$",
            location: "East Harbour",
            hours: "11:00 AM - 11:00 PM",
            specialties: ["Burgers", "Wings", "Fish Tacos", "Local Beer"],
            coordinates: Coordinates(latitude: 16.1025, longitude: -86.8935)
        ),
        Restaurant(
            name: "Tranquil Seas Eco Lodge",
            cuisine: "Farm-to-Table",
            description: "Eco-friendly dining with organic ingredients and vegetarian options. Peaceful garden setting.",
            priceRange: "$$$",
            location: "Pumpkin Hill",
            hours: "12:00 PM - 8:00 PM",
            specialties: ["Vegan Curry", "Fresh Salads", "Grilled Fish", "Homemade Bread"],
            coordinates: Coordinates(latitude: 16.0995, longitude: -86.8880)
        )
    ]

    // MARK: - Activities
    static let activities = [
        Activity(
            name: "Snorkeling at Water Cay",
            category: "Water Sports",
            description: "Take a boat to pristine Water Cay for incredible snorkeling. Crystal clear waters with abundant marine life, perfect for all skill levels.",
            duration: "3-4 hours",
            difficulty: "Easy",
            cost: "$25-35 per person",
            bestTime: "Morning (8:00 AM - 12:00 PM)",
            tips: [
                "Bring reef-safe sunscreen",
                "Underwater camera recommended",
                "Book through local dive shops",
                "Waters are calmest in the morning"
            ]
        ),
        Activity(
            name: "Sunset Cruise",
            category: "Boat Tours",
            description: "Relax on a catamaran or sailboat while watching the famous Utila sunset. Often includes drinks and snacks.",
            duration: "2 hours",
            difficulty: "Easy",
            cost: "$30-40 per person",
            bestTime: "Late afternoon (5:00 PM - 7:00 PM)",
            tips: [
                "Book in advance during high season",
                "Bring a light jacket for wind",
                "Great for romantic evenings",
                "Some tours include free drinks"
            ]
        ),
        Activity(
            name: "Iguana Research Station Visit",
            category: "Wildlife",
            description: "Visit the Iguana Research and Breeding Station to learn about conservation efforts for the Utila Spiny-tailed Iguana, found only on this island.",
            duration: "1-2 hours",
            difficulty: "Easy",
            cost: "$5 donation",
            bestTime: "Anytime",
            tips: [
                "Located near Pumpkin Hill",
                "Educational and family-friendly",
                "Support local conservation",
                "Great photo opportunities"
            ]
        ),
        Activity(
            name: "Kayaking Through Mangroves",
            category: "Eco-Tourism",
            description: "Paddle through Utila's mangrove channels, spotting birds, fish, and learning about this important ecosystem.",
            duration: "2-3 hours",
            difficulty: "Moderate",
            cost: "$35-45 per person",
            bestTime: "Early morning or late afternoon",
            tips: [
                "Bring water and snacks",
                "Wear quick-dry clothing",
                "Mosquito repellent recommended",
                "Guided tours available"
            ]
        ),
        Activity(
            name: "Beach Day at Bando Beach",
            category: "Relaxation",
            description: "Spend a relaxing day at the beautiful white sand beach with calm, clear waters perfect for swimming.",
            duration: "Full day",
            difficulty: "Easy",
            cost: "Free (food/drinks extra)",
            bestTime: "Anytime",
            tips: [
                "Bring your own towels",
                "Several beach bars nearby",
                "Great for families",
                "Excellent swimming conditions"
            ]
        ),
        Activity(
            name: "Island Bike Tour",
            category: "Adventure",
            description: "Rent a bicycle or join a guided tour to explore the island's scenic roads, local neighborhoods, and hidden beaches.",
            duration: "3-5 hours",
            difficulty: "Moderate",
            cost: "$10-15 bike rental, $40 guided tour",
            bestTime: "Morning (avoid midday heat)",
            tips: [
                "Bring plenty of water",
                "Wear sunscreen and a hat",
                "Roads can be rough in places",
                "Stop at local stands for fresh fruit"
            ]
        )
    ]

    // MARK: - Dive Sites
    static let diveSites = [
        DiveSite(
            name: "The Maze",
            depth: "40-80 feet (12-24m)",
            difficulty: "Intermediate to Advanced",
            description: "A spectacular wall dive featuring a labyrinth of swim-throughs, canyons, and coral formations. One of Utila's most famous dive sites.",
            marineLife: ["Eagle Rays", "Moray Eels", "Groupers", "Barracuda", "Reef Sharks"],
            features: ["Swim-throughs", "Wall dive", "Coral formations", "Canyons"],
            bestConditions: "Calm seas, good visibility year-round",
            coordinates: Coordinates(latitude: 16.0850, longitude: -86.9100)
        ),
        DiveSite(
            name: "Blackish Point",
            depth: "30-100+ feet (9-30+m)",
            difficulty: "All levels",
            description: "Popular wall dive with excellent coral coverage and diverse marine life. Great for both beginners and advanced divers.",
            marineLife: ["Sea Turtles", "Spotted Eagle Rays", "Nassau Groupers", "Schools of Jacks"],
            features: ["Healthy coral", "Wall dive", "Multiple depth options"],
            bestConditions: "Best in morning hours",
            coordinates: Coordinates(latitude: 16.0920, longitude: -86.9050)
        ),
        DiveSite(
            name: "Halliburton Wreck",
            depth: "80-110 feet (24-33m)",
            difficulty: "Advanced",
            description: "A 150-foot cargo ship intentionally sunk as an artificial reef. Now home to large groupers, rays, and schools of fish.",
            marineLife: ["Large Groupers", "Eagle Rays", "Barracuda", "Horse-eye Jacks"],
            features: ["Shipwreck", "Penetration diving", "Artificial reef"],
            bestConditions: "Calm seas required",
            coordinates: Coordinates(latitude: 16.0780, longitude: -86.9200)
        ),
        DiveSite(
            name: "Stingray Point",
            depth: "20-50 feet (6-15m)",
            difficulty: "Beginner to Intermediate",
            description: "Shallow reef perfect for newer divers. High chance of encountering southern stingrays resting in the sand.",
            marineLife: ["Southern Stingrays", "Angelfish", "Parrotfish", "Octopus"],
            features: ["Sandy bottom", "Coral heads", "Easy navigation"],
            bestConditions: "Good for all conditions",
            coordinates: Coordinates(latitude: 16.0950, longitude: -86.9000)
        ),
        DiveSite(
            name: "Airport Caves",
            depth: "30-70 feet (9-21m)",
            difficulty: "Intermediate",
            description: "Fascinating cave system with multiple swim-throughs and caverns. Often spotted: sleeping nurse sharks.",
            marineLife: ["Nurse Sharks", "Lobsters", "Moray Eels", "Silversides"],
            features: ["Cave system", "Swim-throughs", "Caverns"],
            bestConditions: "Good visibility needed",
            coordinates: Coordinates(latitude: 16.1100, longitude: -86.8850)
        ),
        DiveSite(
            name: "CJ's Drop Off",
            depth: "50-130+ feet (15-40+m)",
            difficulty: "Advanced",
            description: "Dramatic wall dive dropping into the deep blue. Excellent for spotting pelagics and large marine life.",
            marineLife: ["Whale Sharks (seasonal)", "Eagle Rays", "Tuna", "Dolphins"],
            features: ["Deep wall", "Blue water", "Strong currents possible"],
            bestConditions: "Experienced divers only",
            coordinates: Coordinates(latitude: 16.0800, longitude: -86.9250)
        )
    ]

    // MARK: - Tips
    static let tips = [
        VacationTip(
            category: "Money",
            title: "Currency and ATMs",
            content: "While USD is widely accepted, having local Lempiras can be useful. ATMs are available but can run out of cash on weekends. Bring extra USD just in case. Most places don't accept credit cards.",
            importance: "High"
        ),
        VacationTip(
            category: "Transportation",
            title: "Getting Around",
            content: "The main town is walkable. Rent a golf cart, bicycle, or scooter to explore the island. Water taxis connect different parts of the island. Agree on prices before rides.",
            importance: "High"
        ),
        VacationTip(
            category: "Health",
            title: "Sun Protection",
            content: "The tropical sun is intense! Use reef-safe sunscreen (required for diving/snorkeling), wear a hat, and stay hydrated. Bring aloe vera for any sunburns.",
            importance: "High"
        ),
        VacationTip(
            category: "Diving",
            title: "Dive Insurance",
            content: "Utila has a hyperbaric chamber, but having DAN (Divers Alert Network) insurance is highly recommended before diving. Most dive shops require proof of insurance.",
            importance: "Critical"
        ),
        VacationTip(
            category: "Communication",
            title: "Internet and Phone",
            content: "WiFi is available at most hotels and restaurants but can be slow. Buy a local SIM card at Tigo or Claro for mobile data. Download offline maps before arriving.",
            importance: "Medium"
        ),
        VacationTip(
            category: "Safety",
            title: "Water Safety",
            content: "Drink bottled water only. Most restaurants use purified water for ice and cooking, but ask if unsure. Bring water purification tablets as backup.",
            importance: "High"
        ),
        VacationTip(
            category: "Packing",
            title: "What to Bring",
            content: "Pack light, quick-dry clothing, reef-safe sunscreen, bug spray, basic medications, waterproof phone case, and a reusable water bottle. Laundry services are available.",
            importance: "Medium"
        ),
        VacationTip(
            category: "Diving",
            title: "Whale Shark Season",
            content: "Whale sharks are most commonly seen from March to April and September to November. Book whale shark tours through certified operators only.",
            importance: "Medium"
        ),
        VacationTip(
            category: "Culture",
            title: "Local Etiquette",
            content: "Utila is laid-back and friendly. Greet people with 'buenos días' or 'buenas'. Tipping 10-15% is appreciated. Be respectful of private property and local customs.",
            importance: "Medium"
        ),
        VacationTip(
            category: "Weather",
            title: "Best Time to Visit",
            content: "Dry season (February-August) offers the best weather. September-October can be rainy with possible hurricanes. November-January has good diving but occasional rough seas.",
            importance: "Medium"
        )
    ]

    // MARK: - Trips
    static let trips = [
        Trip(
            name: "Whale Shark Snorkel Adventure",
            duration: "4-5 hours",
            description: "Once-in-a-lifetime opportunity to swim with the gentle giants of the sea. Includes boat ride, guide, snorkel gear, and refreshments.",
            includes: ["Certified guide", "Snorkel equipment", "Refreshments", "Photos"],
            price: "$150-200 per person",
            provider: "Various dive shops - Utila Dive Centre, Underwater Vision"
        ),
        Trip(
            name: "Open Water Dive Certification",
            duration: "3-4 days",
            description: "Get PADI certified in the dive capital of the Caribbean! Utila is famous for affordable, high-quality dive training.",
            includes: ["All equipment", "Instruction", "Materials", "Certification"],
            price: "$280-350",
            provider: "UDC, Altons, Bay Islands College of Diving"
        ),
        Trip(
            name: "Island Hopping to Roatan",
            duration: "Full day",
            description: "Take a ferry to nearby Roatan island for shopping, beaches, and West End exploration. Experience a different Bay Island vibe.",
            includes: ["Ferry transport", "Free time in West End"],
            price: "$60-80 (ferry + expenses)",
            provider: "Utila Dream Ferry"
        ),
        Trip(
            name: "Fishing Charter",
            duration: "Half or full day",
            description: "Deep sea fishing for mahi-mahi, wahoo, and tuna. Experienced captains know the best spots around the island.",
            includes: ["Boat", "Captain", "Equipment", "Bait"],
            price: "$400-800 (group rate)",
            provider: "Local fishing charters"
        ),
        Trip(
            name: "Sunset Paddleboard & Yoga",
            duration: "2 hours",
            description: "Combine yoga and paddleboarding during golden hour. Peaceful way to end the day with beautiful views.",
            includes: ["Paddleboard", "Instructor", "Light refreshments"],
            price: "$40-50 per person",
            provider: "Yoga studios and water sports centers"
        ),
        Trip(
            name: "Jungle and Cave Exploration",
            duration: "3-4 hours",
            description: "Hike through Utila's interior jungle to hidden caves. Learn about local flora, fauna, and the island's spiny-tailed iguanas.",
            includes: ["Guide", "Cave access", "Water", "Snacks"],
            price: "$50-70 per person",
            provider: "Utila Adventure Tours"
        )
    ]

    // MARK: - Weather
    static let weatherInfo = WeatherInfo(
        temperature: "82°F (28°C)",
        condition: "Partly Cloudy",
        humidity: "75%",
        windSpeed: "10-15 mph",
        waterTemp: "81°F (27°C)",
        visibility: "Good (60-80ft underwater)",
        forecast: [
            DailyForecast(day: "Today", high: "84°F", low: "77°F", condition: "Partly Cloudy", chanceOfRain: "20%"),
            DailyForecast(day: "Tomorrow", high: "85°F", low: "78°F", condition: "Sunny", chanceOfRain: "10%"),
            DailyForecast(day: "Sunday", high: "83°F", low: "76°F", condition: "Scattered Showers", chanceOfRain: "40%"),
            DailyForecast(day: "Monday", high: "84°F", low: "77°F", condition: "Partly Cloudy", chanceOfRain: "25%"),
            DailyForecast(day: "Tuesday", high: "86°F", low: "78°F", condition: "Sunny", chanceOfRain: "15%"),
            DailyForecast(day: "Wednesday", high: "85°F", low: "78°F", condition: "Partly Cloudy", chanceOfRain: "20%"),
            DailyForecast(day: "Thursday", high: "84°F", low: "77°F", condition: "Sunny", chanceOfRain: "10%")
        ]
    )
}
