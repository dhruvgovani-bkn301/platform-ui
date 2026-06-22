// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.8-SNAPSHOT"
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
            checksum: "736fcbaccbeee30f8c6bd702d36fcece8c6d1373bd3d22c2b00036b8fba46b8b"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "7ddca936004a8289415f874013bbe65cfc0465de00b119d50afb02bc0bdb529d"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "1657bf8ffb307a18a936929fee612a55db2559c96f5c3a0ec40577896067dfb6"
        ),
    ]
)
