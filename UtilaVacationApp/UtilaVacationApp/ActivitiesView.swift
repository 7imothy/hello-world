import SwiftUI

struct ActivitiesView: View {
    let activities = SampleData.activities

    var body: some View {
        NavigationView {
            List(activities) { activity in
                NavigationLink(destination: ActivityDetailView(activity: activity)) {
                    ActivityRow(activity: activity)
                }
            }
            .navigationTitle("Activities")
        }
    }
}

struct ActivityRow: View {
    let activity: Activity

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(activity.name)
                .font(.headline)
                .foregroundColor(.primary)

            HStack {
                Label(activity.category, systemImage: "tag.fill")
                    .font(.caption)
                    .foregroundColor(.blue)

                Spacer()

                DifficultyBadge(difficulty: activity.difficulty)
            }

            HStack {
                Text(activity.duration)
                    .font(.caption)
                    .foregroundColor(.secondary)

                Spacer()

                Text(activity.cost)
                    .font(.caption)
                    .foregroundColor(.green)
            }
        }
        .padding(.vertical, 4)
    }
}

struct DifficultyBadge: View {
    let difficulty: String

    var color: Color {
        switch difficulty {
        case "Easy": return .green
        case "Moderate": return .orange
        case "Advanced", "Intermediate to Advanced": return .red
        default: return .gray
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

struct ActivityDetailView: View {
    let activity: Activity

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(activity.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    HStack {
                        Label(activity.category, systemImage: "tag.fill")
                        Spacer()
                        DifficultyBadge(difficulty: activity.difficulty)
                    }
                    .font(.subheadline)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("Description")
                        .font(.headline)

                    Text(activity.description)
                        .font(.body)
                        .foregroundColor(.primary)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Text("Details")
                        .font(.headline)

                    DetailRow(icon: "clock.fill", label: "Duration", value: activity.duration)
                    DetailRow(icon: "dollarsign.circle.fill", label: "Cost", value: activity.cost)
                    DetailRow(icon: "sun.max.fill", label: "Best Time", value: activity.bestTime)
                }

                Divider()

                VStack(alignment: .leading, spacing: 12) {
                    Label("Tips", systemImage: "lightbulb.fill")
                        .font(.headline)
                        .foregroundColor(.orange)

                    ForEach(activity.tips, id: \.self) { tip in
                        HStack(alignment: .top, spacing: 8) {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                                .font(.caption)
                            Text(tip)
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

struct DetailRow: View {
    let icon: String
    let label: String
    let value: String

    var body: some View {
        HStack {
            Label(label, systemImage: icon)
                .foregroundColor(.blue)
                .frame(width: 120, alignment: .leading)
            Text(value)
                .foregroundColor(.primary)
        }
        .font(.body)
    }
}

#Preview {
    ActivitiesView()
}
