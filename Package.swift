// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.4-SNAPSHOT"
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
            checksum: "43156177dafb2966ee652ee583cfa175840284a9ec336887f34703d72d1c60f5"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "39b9f10cab07c4c099de8f9bf311a29ea18f6182a9411b2f44d89dacfe81f29c"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "b35438b04443bf6f4fdd76b1bd34d994f2f733b6a5b0dd2b723397d31fa528b2"
        ),
    ]
)
