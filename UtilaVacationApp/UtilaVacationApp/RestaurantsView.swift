import SwiftUI

struct RestaurantsView: View {
    let restaurants = SampleData.restaurants

    var body: some View {
        NavigationView {
            List(restaurants) { restaurant in
                NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                    RestaurantRow(restaurant: restaurant)
                }
            }
            .navigationTitle("Restaurants")
        }
    }
}

struct RestaurantRow: View {
    let restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(restaurant.name)
                .font(.headline)
                .foregroundColor(.primary)

            HStack {
                Text(restaurant.cuisine)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Spacer()

                Text(restaurant.priceRange)
                    .font(.subheadline)
                    .foregroundColor(.green)
            }

            Text(restaurant.location)
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding(.vertical, 4)
    }
}

struct RestaurantDetailView: View {
    let restaurant: Restaurant

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(restaurant.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    HStack {
                        Label(restaurant.cuisine, systemImage: "fork.knife")
                        Spacer()
                        Text(restaurant.priceRange)
                            .fontWeight(.semibold)
                            .foregroundColor(.green)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("About")
                        .font(.headline)

                    Text(restaurant.description)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("Location", systemImage: "mappin.circle.fill")
                        .font(.headline)

                    Text(restaurant.location)
                        .font(.body)

                    if let phone = restaurant.phone {
                        Label(phone, systemImage: "phone.fill")
                            .font(.body)
                    }

                    Label(restaurant.hours, systemImage: "clock.fill")
                        .font(.body)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("Specialties")
                        .font(.headline)

                    ForEach(restaurant.specialties, id: \.self) { specialty in
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.caption)
                            Text(specialty)
                                .font(.body)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RestaurantsView()
}
