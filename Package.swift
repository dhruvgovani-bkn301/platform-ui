// swift-tools-version: 5.9
// Distribution-only SPM manifest — no platform source in this repo.
// Updated by platform-kmp CI on each release.
import PackageDescription

let release = "0.1.1-SNAPSHOT"
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
            checksum: "2ac159fa28c9bf026d65f3c41b3f0733ff6648c6ed7ed9811456ebed6669e7fd"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "91c20b8b36d6506e68dd00fdc690e640059ccf83b445aca14d0cea2ccac7e406"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "698d3d76b6b64a82185172b5c7e99dc4b9d9b8e783cac92ed477c804e22ec25a"
        ),
    ]
)
