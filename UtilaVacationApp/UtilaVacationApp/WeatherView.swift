import SwiftUI

struct WeatherView: View {
    let weather = SampleData.weatherInfo

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    CurrentWeatherCard(weather: weather)

                    DivingConditionsCard(weather: weather)

                    ForecastSection(forecast: weather.forecast)
                }
                .padding()
            }
            .navigationTitle("Weather")
            .background(Color(.systemGroupedBackground))
        }
    }
}

struct CurrentWeatherCard: View {
    let weather: WeatherInfo

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: weatherIcon(for: weather.condition))
                    .font(.system(size: 60))
                    .foregroundColor(.orange)

                Spacer()

                VStack(alignment: .trailing) {
                    Text(weather.temperature)
                        .font(.system(size: 48, weight: .bold))
                    Text(weather.condition)
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
            }

            Divider()

            HStack(spacing: 20) {
                WeatherMetric(icon: "humidity.fill", label: "Humidity", value: weather.humidity)
                Divider()
                WeatherMetric(icon: "wind", label: "Wind", value: weather.windSpeed)
            }
            .frame(height: 60)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 2)
    }

    func weatherIcon(for condition: String) -> String {
        switch condition.lowercased() {
        case let c where c.contains("sunny"): return "sun.max.fill"
        case let c where c.contains("cloudy"): return "cloud.sun.fill"
        case let c where c.contains("rain"): return "cloud.rain.fill"
        case let c where c.contains("storm"): return "cloud.bolt.fill"
        default: return "cloud.sun.fill"
        }
    }
}

struct DivingConditionsCard: View {
    let weather: WeatherInfo

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Label("Diving Conditions", systemImage: "figure.water.fitness")
                .font(.headline)
                .foregroundColor(.blue)

            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Water Temp")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(weather.waterTemp)
                        .font(.title2)
                        .fontWeight(.semibold)
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 8) {
                    Text("Visibility")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(weather.visibility)
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            }

            VisibilityIndicator(visibility: weather.visibility)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 2)
    }
}

struct VisibilityIndicator: View {
    let visibility: String

    var condition: (text: String, color: Color) {
        if visibility.contains("Good") || visibility.contains("60") {
            return ("Excellent diving conditions", .green)
        } else if visibility.contains("Fair") {
            return ("Good diving conditions", .orange)
        } else {
            return ("Check with dive shop", .red)
        }
    }

    var body: some View {
        HStack {
            Circle()
                .fill(condition.color)
                .frame(width: 8, height: 8)
            Text(condition.text)
                .font(.caption)
                .foregroundColor(condition.color)
        }
    }
}

struct WeatherMetric: View {
    let icon: String
    let label: String
    let value: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.blue)
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
            Text(value)
                .font(.body)
                .fontWeight(.semibold)
        }
        .frame(maxWidth: .infinity)
    }
}

struct ForecastSection: View {
    let forecast: [DailyForecast]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("7-Day Forecast")
                .font(.headline)
                .padding(.horizontal)

            VStack(spacing: 8) {
                ForEach(forecast) { day in
                    ForecastRow(forecast: day)
                }
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(16)
            .shadow(radius: 2)
        }
    }
}

struct ForecastRow: View {
    let forecast: DailyForecast

    var body: some View {
        HStack {
            Text(forecast.day)
                .font(.body)
                .fontWeight(.medium)
                .frame(width: 90, alignment: .leading)

            Image(systemName: weatherIcon(for: forecast.condition))
                .foregroundColor(.orange)
                .frame(width: 30)

            Spacer()

            VStack(alignment: .trailing, spacing: 2) {
                Text(forecast.condition)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("\(forecast.chanceOfRain) rain")
                    .font(.caption2)
                    .foregroundColor(.blue)
            }

            Spacer()

            HStack(spacing: 4) {
                Text(forecast.high)
                    .fontWeight(.semibold)
                Text("/")
                    .foregroundColor(.secondary)
                Text(forecast.low)
                    .foregroundColor(.secondary)
            }
            .font(.body)
        }
        .padding(.vertical, 4)
    }

    func weatherIcon(for condition: String) -> String {
        switch condition.lowercased() {
        case let c where c.contains("sunny"): return "sun.max.fill"
        case let c where c.contains("cloudy"): return "cloud.sun.fill"
        case let c where c.contains("rain") || c.contains("shower"): return "cloud.rain.fill"
        case let c where c.contains("storm"): return "cloud.bolt.fill"
        default: return "cloud.sun.fill"
        }
    }
}

#Preview {
    WeatherView()
}
