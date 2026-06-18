// swift-tools-version: 5.9
// Distribution-only SPM manifest — no platform source in this repo.
// Updated by platform-kmp CI on each release.
import PackageDescription

let release = "0.1.0-SNAPSHOT"
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
            checksum: "1f2858d99898406047b3dd243747e8233c2e77a5fce3743b6eae360e86b44482"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "bf0bf628201cb7129cedef8fd303680921ce4b544b4465e479ec9f31a2752948"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "f8d4dd972af70b6b964730a3b306125566da736596d6a2b9e0f2fc2c19a6dbb4"
        ),
    ]
)
