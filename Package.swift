// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.12-SNAPSHOT"
let baseURL = "https://github.com/dhruvgovani-bkn301/platform-ui/releases/download/\(release)"

let package = Package(
    name: "PlatformUI",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "DesignKit", targets: ["DesignKit"]),
        .library(name: "AccountsUI", targets: ["AccountsUI"]),
        .library(name: "CardsUI", targets: ["CardsUI"]),
    ],
    targets: [
        .binaryTarget(
            name: "DesignKit",
            url: "\(baseURL)/DesignKit.xcframework.zip",
            checksum: "a4f64427f419d662744d659f0258f868c6afee5c2e4fd5213c4634d11f6f1366"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "983fb4fbc902d7a7bf06b15243f012e7f6819e390c9ed98a3cb984953b01b510"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "2548f317d8336c914c3fd417daf61f3270a657e38fa9f6b09dc107daaafcdff8"
        ),
    ]
)
