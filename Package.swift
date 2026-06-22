// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.10-SNAPSHOT"
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
            checksum: "2d1321954ff77ea531e20c4e29f11b0a826da7bcad09cb6c763b7e397a337f69"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "de132fba5578fd5d979f8d1c3ff30f8b507eced31fea95a940cb012d58a91db9"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "351970c202d31ef2d04c8239cd22241efea4dba00080c4111ad9bc62bdc7c556"
        ),
    ]
)
