import SwiftUI

// Public layout sample. No network calls, secrets, or production services.
struct ContentView: View {
    var body: some View {
        TabView {
            ShowcasePage(title: "Today", symbol: "sun.max.fill", cards: ["Daily check-in", "Your routine", "A moment to pause"])
                .tabItem { Label("Today", systemImage: "sun.max.fill") }
            ShowcasePage(title: "Routines", symbol: "leaf.fill", cards: ["Morning reset", "Mindful break", "Evening reflection"])
                .tabItem { Label("Routines", systemImage: "leaf.fill") }
            ShowcasePage(title: "Profile", symbol: "person.crop.circle", cards: ["Your preferences", "Personal goals", "Weekly reflection"])
                .tabItem { Label("Profile", systemImage: "person.crop.circle") }
        }
        .tint(.purple)
    }
}

private struct ShowcasePage: View {
    let title: String
    let symbol: String
    let cards: [String]
    @State private var selectedCard: String?

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Label("CyrenX • Layout preview", systemImage: symbol)
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.purple)
                    Text("Make room for your daily wellbeing.")
                        .font(.largeTitle.bold())
                    Text("Sample content only. Explore the layout by selecting a card.")
                        .foregroundStyle(.secondary)
                    ForEach(cards, id: \.self) { card in
                        Button { selectedCard = card } label: {
                            HStack(spacing: 16) {
                                Image(systemName: symbol)
                                    .font(.title2)
                                    .foregroundStyle(.purple)
                                    .accessibilityHidden(true)
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(card).font(.headline)
                                    Text("Explore this sample screen")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .accessibilityHidden(true)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(22)
                            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 22))
                        }
                        .buttonStyle(.plain)
                    }
                    Text("Demo only • No personal data collected")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                .padding(24)
            }
            .navigationTitle(title)
            .sheet(isPresented: Binding(get: { selectedCard != nil }, set: { if !$0 { selectedCard = nil } })) {
                VStack(spacing: 24) {
                    Text(selectedCard ?? "Preview").font(.title.bold())
                    Text("This is a layout demonstration. Production features and services are not included.")
                        .multilineTextAlignment(.center)
                    Button("Close preview") { selectedCard = nil }
                        .buttonStyle(.borderedProminent)
                }
                .padding(32)
            }
        }
    }
}

#Preview { ContentView() }
