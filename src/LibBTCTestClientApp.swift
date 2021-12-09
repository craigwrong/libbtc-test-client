import SwiftUI

@main
struct LibBTCTestClientApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .task {
                BtcManager.shared.eccStart()
            }
        }
    }
}
