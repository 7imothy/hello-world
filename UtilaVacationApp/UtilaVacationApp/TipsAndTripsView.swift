import SwiftUI

struct TipsAndTripsView: View {
    @State private var selectedSegment = 0
    let tips = SampleData.tips
    let trips = SampleData.trips

    var body: some View {
        NavigationView {
            VStack {
                Picker("", selection: $selectedSegment) {
                    Text("Tips").tag(0)
                    Text("Trips").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                if selectedSegment == 0 {
                    TipsListView(tips: tips)
                } else {
                    TripsListView(trips: trips)
                }
            }
            .navigationTitle("Tips & Trips")
        }
    }
}

struct TipsListView: View {
    let tips: [VacationTip]

    var body: some View {
        List(tips) { tip in
            NavigationLink(destination: TipDetailView(tip: tip)) {
                TipRow(tip: tip)
            }
        }
    }
}

struct TipRow: View {
    let tip: VacationTip

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(tip.title)
                    .font(.headline)
                    .foregroundColor(.primary)

                Spacer()

                ImportanceBadge(importance: tip.importance)
            }

            Text(tip.category)
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding(.vertical, 4)
    }
}

struct ImportanceBadge: View {
    let importance: String

    var color: Color {
        switch importance {
        case "Critical": return .red
        case "High": return .orange
        case "Medium": return .blue
        default: return .gray
        }
    }

    var body: some View {
        Text(importance)
            .font(.caption2)
            .fontWeight(.semibold)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(color.opacity(0.2))
            .foregroundColor(color)
            .cornerRadius(8)
    }
}

struct TipDetailView: View {
    let tip: VacationTip

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(tip.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    HStack {
                        Label(tip.category, systemImage: "tag.fill")
                            .font(.subheadline)
                            .foregroundColor(.blue)

                        Spacer()

                        ImportanceBadge(importance: tip.importance)
                    }
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text(tip.content)
                        .font(.body)
                        .foregroundColor(.primary)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TripsListView: View {
    let trips: [Trip]

    var body: some View {
        List(trips) { trip in
            NavigationLink(destination: TripDetailView(trip: trip)) {
                TripRow(trip: trip)
            }
        }
    }
}

struct TripRow: View {
    let trip: Trip

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(trip.name)
                .font(.headline)
                .foregroundColor(.primary)

            HStack {
                Label(trip.duration, systemImage: "clock.fill")
                    .font(.caption)
                    .foregroundColor(.secondary)

                Spacer()

                Text(trip.price)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
            }

            Text(trip.provider)
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding(.vertical, 4)
    }
}

struct TripDetailView: View {
    let trip: Trip

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(trip.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    HStack {
                        Label(trip.duration, systemImage: "clock.fill")
                        Spacer()
                        Text(trip.price)
                            .fontWeight(.semibold)
                            .foregroundColor(.green)
                    }
                    .font(.subheadline)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("Description")
                        .font(.headline)

                    Text(trip.description)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("What's Included", systemImage: "checkmark.circle.fill")
                        .font(.headline)
                        .foregroundColor(.green)

                    ForEach(trip.includes, id: \.self) { item in
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                                .font(.caption)
                            Text(item)
                                .font(.body)
                        }
                    }
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("Provider", systemImage: "building.2.fill")
                        .font(.headline)
                        .foregroundColor(.blue)

                    Text(trip.provider)
                        .font(.body)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TipsAndTripsView()
}
