// swift-tools-version: 5.9
// Distribution-only SPM manifest — no platform source in this repo.
import PackageDescription

let release = "0.1.2-SNAPSHOT"
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
            checksum: "1e6f3879c87d64ea344c71518be63ba672abbd8aae296b8bbad81b15a79224af"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "5df77d8792f02f9b37f0645c53464bfe0e2b1a30640861c2b5ac94e072bbd4cc"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "e5eda7aeae17e18b04264bb9723a5da2bab88f0b24184ec8e03102c987fd89da"
        ),
    ]
)
