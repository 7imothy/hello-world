import Foundation
import CoreLocation

// MARK: - Restaurant Model
struct Restaurant: Identifiable, Codable {
    let id: UUID
    let name: String
    let cuisine: String
    let description: String
    let priceRange: String
    let location: String
    let phone: String?
    let hours: String
    let specialties: [String]
    let coordinates: Coordinates?

    init(id: UUID = UUID(), name: String, cuisine: String, description: String,
         priceRange: String, location: String, phone: String? = nil,
         hours: String, specialties: [String], coordinates: Coordinates? = nil) {
        self.id = id
        self.name = name
        self.cuisine = cuisine
        self.description = description
        self.priceRange = priceRange
        self.location = location
        self.phone = phone
        self.hours = hours
        self.specialties = specialties
        self.coordinates = coordinates
    }
}

// MARK: - Activity Model
struct Activity: Identifiable, Codable {
    let id: UUID
    let name: String
    let category: String
    let description: String
    let duration: String
    let difficulty: String
    let cost: String
    let bestTime: String
    let tips: [String]

    init(id: UUID = UUID(), name: String, category: String, description: String,
         duration: String, difficulty: String, cost: String, bestTime: String, tips: [String]) {
        self.id = id
        self.name = name
        self.category = category
        self.description = description
        self.duration = duration
        self.difficulty = difficulty
        self.cost = cost
        self.bestTime = bestTime
        self.tips = tips
    }
}

// MARK: - Dive Site Model
struct DiveSite: Identifiable, Codable {
    let id: UUID
    let name: String
    let depth: String
    let difficulty: String
    let description: String
    let marineLife: [String]
    let features: [String]
    let bestConditions: String
    let coordinates: Coordinates?

    init(id: UUID = UUID(), name: String, depth: String, difficulty: String,
         description: String, marineLife: [String], features: [String],
         bestConditions: String, coordinates: Coordinates? = nil) {
        self.id = id
        self.name = name
        self.depth = depth
        self.difficulty = difficulty
        self.description = description
        self.marineLife = marineLife
        self.features = features
        self.bestConditions = bestConditions
        self.coordinates = coordinates
    }
}

// MARK: - Tip Model
struct VacationTip: Identifiable, Codable {
    let id: UUID
    let category: String
    let title: String
    let content: String
    let importance: String

    init(id: UUID = UUID(), category: String, title: String, content: String, importance: String) {
        self.id = id
        self.category = category
        self.title = title
        self.content = content
        self.importance = importance
    }
}

// MARK: - Trip Model
struct Trip: Identifiable, Codable {
    let id: UUID
    let name: String
    let duration: String
    let description: String
    let includes: [String]
    let price: String
    let provider: String

    init(id: UUID = UUID(), name: String, duration: String, description: String,
         includes: [String], price: String, provider: String) {
        self.id = id
        self.name = name
        self.duration = duration
        self.description = description
        self.includes = includes
        self.price = price
        self.provider = provider
    }
}

// MARK: - Weather Model
struct WeatherInfo: Codable {
    let temperature: String
    let condition: String
    let humidity: String
    let windSpeed: String
    let waterTemp: String
    let visibility: String
    let forecast: [DailyForecast]
}

struct DailyForecast: Identifiable, Codable {
    let id: UUID
    let day: String
    let high: String
    let low: String
    let condition: String
    let chanceOfRain: String

    init(id: UUID = UUID(), day: String, high: String, low: String,
         condition: String, chanceOfRain: String) {
        self.id = id
        self.day = day
        self.high = high
        self.low = low
        self.condition = condition
        self.chanceOfRain = chanceOfRain
    }
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude: Double
    let longitude: Double
}
