// swift-tools-version: 5.9
import PackageDescription

let release = "0.1.9-SNAPSHOT"
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
            checksum: "a03a3cc39ae86466d026f37eefe43dce273cf5d9f7cbb13192f97312c4a97dbd"
        ),
        .binaryTarget(
            name: "AccountsUI",
            url: "\(baseURL)/AccountsUI.xcframework.zip",
            checksum: "530b8ebf00a881bb38c925df5e615d8707809b955ad2f80ed12195f2c1d0f772"
        ),
        .binaryTarget(
            name: "CardsUI",
            url: "\(baseURL)/CardsUI.xcframework.zip",
            checksum: "579a6eb60b0964bc0120dddd4652fb98268cb331ec0bb98b4f663cb7eed8e025"
        ),
    ]
)
