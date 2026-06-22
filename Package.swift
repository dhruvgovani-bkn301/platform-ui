// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.11-SNAPSHOT"
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
            checksum: "90ddb70797ff1dc64be94f6f18ab3d08c5c1c71c826223c50609c68ca4962edc"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "0d6b4e30ec3acc8958cf742c6e079c288ee6b39f50585f9da0ec159f87d137cd"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "a080a55ab2b95229deaa4f97c6d629a2b896795e9faadb7941de555caad8e99f"
        ),
    ]
)
