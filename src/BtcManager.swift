struct BtcManager {

    static let shared = Self.init()

    private init() { }

    func eccStart() {
        btc_ecc_start()
    }

    func genPrivateKey() -> String {
        let cString = _genPrivateKey()
        let privateKey = String(cString: cString!, encoding: .utf8)!
        //free(UnsafeMutableRawPointer(mutating: cString))
        return privateKey
    }
}
