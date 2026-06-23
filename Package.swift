// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.13-SNAPSHOT"
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
            checksum: "fbe7ee3d30fa6abb9602484bacf3d5c5b3040f2674000acc857563a2f1380b6e"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "4de2578d2a87d34304d15977a4333f445761093103919ad19ae79831332f0298"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "10dba50fc1e30f077363884f7ac769a1c1e98a73a47a516b4a9db95283ce2195"
        ),
    ]
)
