// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.5-SNAPSHOT"
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
            checksum: "8549cc4d128d29a66aa3f6faee199deeda12d8c01b2a5f207c5f279312802b24"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "fdd2fb0f03994e589c87f2e38f38d955d3aad0520f0a17e45d299e6fdc02bc7c"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "8d823d4d6b05ed7da59d0bfd332978ccad21f514bb8976222e8ec3a4a719eb7a"
        ),
    ]
)
