import SwiftUI

struct ContentView: View {

    @State var key = String?.none

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text(key ?? "No key generated yet.")
                } header: {
                    Text("Generated Keys")
                }
                Button {
                    key = BtcManager.shared.genPrivateKey()
                } label: {
                    Label("New Private Key", systemImage: "key")
                }
            }
            .navigationBarTitle("Bitcoin Keychain")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
