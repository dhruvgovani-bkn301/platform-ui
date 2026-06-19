// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.6-SNAPSHOT"
let baseURL = "https://github.com/dhruvgovani-bkn301/platform-ui/releases/download/\(release)"

let package = Package(
    name: "PlatformUI",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "DesignKit", targets: ["DesignKit"]),
        .library(name: "AccountsUI", targets: ["AccountsUITarget"]),
        .library(name: "CardsUI", targets: ["CardsUITarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.9.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DesignKit",
            url: "\(baseURL)/DesignKit.xcframework.zip",
            checksum: "5b866e738dd9c38b6dac2022409d3451551f73cb8be77714effd4c58b57b3809"
        ),
        .binaryTarget(
            name: "AccountsUIBinary",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "964286748f73897e3a3523fb7080fe42033527244899ab6a43326ad1eedd58bb"
        ),
        .binaryTarget(
            name: "CardsUIBinary",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "0e84e61cfbc2581774f4cf621bb2a3b451a499355b527e43fd5f355a267b9457"
        ),
        .target(
            name: "AccountsUITarget",
            dependencies: [
                "AccountsUIBinary",
                .product(name: "Swinject", package: "Swinject"),
            ],
            path: "Sources/AccountsUITarget"
        ),
        .target(
            name: "CardsUITarget",
            dependencies: [
                "CardsUIBinary",
                .product(name: "Swinject", package: "Swinject"),
            ],
            path: "Sources/CardsUITarget"
        ),
    ]
)
