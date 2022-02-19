// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CarbonKit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CarbonKit",
            targets: ["CarbonKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CarbonKit",
            dependencies: []),
        .testTarget(
            name: "CarbonKitTests",
            dependencies: ["CarbonKit"]),
    ]
)
