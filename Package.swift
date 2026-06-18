// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.3-SNAPSHOT"
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
            checksum: "50b71637c31165e4c1f6924dd56da898d7534cafab153a2e2bd5c74ad46a0fd8"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "62f1bc50210d26d45a4c429264429f79a01e39a539caf14c5ecee11fe91e0835"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "a5995ae1a37e855b02c86039de458d2090203a93fb3c25cd7fadc6f6baaa5cc7"
        ),
    ]
)
