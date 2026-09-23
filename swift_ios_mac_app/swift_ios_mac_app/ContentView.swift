import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Gotologin"){
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
