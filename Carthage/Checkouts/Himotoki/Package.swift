// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Himotoki",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "Himotoki", targets: ["Himotoki"]),
    ],
    targets: [
        .target(name: "Himotoki", dependencies: [], path: "Sources"),
        .testTarget(name: "HimotokiTests", dependencies: ["Himotoki"]),
    ],
    swiftLanguageVersions: [.v5]
)
