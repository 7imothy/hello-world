import SwiftUI

struct DivingView: View {
    let diveSites = SampleData.diveSites

    var body: some View {
        NavigationView {
            List(diveSites) { site in
                NavigationLink(destination: DiveSiteDetailView(diveSite: site)) {
                    DiveSiteRow(diveSite: site)
                }
            }
            .navigationTitle("Dive Sites")
        }
    }
}

struct DiveSiteRow: View {
    let diveSite: DiveSite

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(diveSite.name)
                .font(.headline)
                .foregroundColor(.primary)

            HStack {
                Label(diveSite.depth, systemImage: "arrow.down.circle.fill")
                    .font(.caption)
                    .foregroundColor(.blue)

                Spacer()

                DiveDifficultyBadge(difficulty: diveSite.difficulty)
            }
        }
        .padding(.vertical, 4)
    }
}

struct DiveDifficultyBadge: View {
    let difficulty: String

    var color: Color {
        switch difficulty {
        case let d where d.contains("Beginner") || d.contains("All levels"):
            return .green
        case let d where d.contains("Intermediate"):
            return .orange
        case let d where d.contains("Advanced"):
            return .red
        default:
            return .gray
        }
    }

    var body: some View {
        Text(difficulty)
            .font(.caption2)
            .fontWeight(.semibold)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(color.opacity(0.2))
            .foregroundColor(color)
            .cornerRadius(8)
    }
}

struct DiveSiteDetailView: View {
    let diveSite: DiveSite

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(diveSite.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    HStack {
                        Label(diveSite.depth, systemImage: "arrow.down.circle.fill")
                        Spacer()
                        DiveDifficultyBadge(difficulty: diveSite.difficulty)
                    }
                    .font(.subheadline)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("Description")
                        .font(.headline)

                    Text(diveSite.description)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("Marine Life", systemImage: "fish.fill")
                        .font(.headline)
                        .foregroundColor(.blue)

                    ForEach(diveSite.marineLife, id: \.self) { animal in
                        HStack {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 6))
                            Text(animal)
                                .font(.body)
                        }
                    }
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("Site Features", systemImage: "star.fill")
                        .font(.headline)
                        .foregroundColor(.orange)

                    ForEach(diveSite.features, id: \.self) { feature in
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                                .font(.caption)
                            Text(feature)
                                .font(.body)
                        }
                    }
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("Best Conditions", systemImage: "sun.max.fill")
                        .font(.headline)
                        .foregroundColor(.yellow)

                    Text(diveSite.bestConditions)
                        .font(.body)
                        .padding()
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
    DivingView()
}
