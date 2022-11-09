// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "BetterMappable",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v4)
    ],
    products: [
        .library(name: "BetterMappable", targets: ["BetterMappable"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/tristanhimmelman/ObjectMapper.git",
            exact: "4.2.0"
        )
    ],
    targets: [
        .target(name: "BetterMappable", dependencies: ["ObjectMapper"], path: "Source"),
        .testTarget(name: "BetterMappableTests", dependencies: ["BetterMappable"], path: "Tests")
    ]
)
