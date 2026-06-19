// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.7-SNAPSHOT"
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
            checksum: "4781a6256a81c5b11506fbc2c88b4700b04878129441c7b30debc7fe65ea9073"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "01d90b87b5251bdecc8fab2a3eb48a142f42043b88d6dbfa92aa5a7cab1984d5"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "6c204e0ee73647371ce1756da5f225620133a0f3e5726757e08a8193c1a7cf07"
        ),
    ]
)
