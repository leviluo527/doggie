import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("首页", systemImage: "house")
                }

            ServicesView()
                .tabItem {
                    Label("服务", systemImage: "pawprint")
                }

            AIDoctorView()
                .tabItem {
                    Label("AI医生", systemImage: "stethoscope")
                }

            ProfileView()
                .tabItem {
                    Label("我的", systemImage: "person.circle")
                }
        }
        .accentColor(.brandGreen)
    }
}

#Preview {
    ContentView()
}
