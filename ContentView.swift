import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CheckInView()
                .tabItem {
                    Label("Check-in", systemImage: "checkmark.circle.fill")
                }

            TrendsView()
                .tabItem {
                    Label("Trends", systemImage: "chart.bar.fill")
                }

            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }
        }
        .tint(.indigo)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: CheckIn.self, inMemory: true)
}
