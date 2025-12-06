import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RestaurantsView()
                .tabItem {
                    Label("Restaurants", systemImage: "fork.knife")
                }

            ActivitiesView()
                .tabItem {
                    Label("Activities", systemImage: "figure.surfing")
                }

            WeatherView()
                .tabItem {
                    Label("Weather", systemImage: "cloud.sun.fill")
                }

            DivingView()
                .tabItem {
                    Label("Diving", systemImage: "figure.water.fitness")
                }

            TipsAndTripsView()
                .tabItem {
                    Label("Tips & Trips", systemImage: "lightbulb.fill")
                }
        }
        .accentColor(.blue)
    }
}

#Preview {
    ContentView()
}
