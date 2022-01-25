// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "onair",
    platforms: [
        .macOS(.v10_15),
    ],
    dependencies: [
         .package(url: "https://github.com/apple/swift-log.git", from: "1.4.0"),
         .package(url: "https://github.com/apple/swift-tools-support-core.git", from: "0.0.0"),
         .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "onair",
            dependencies: ["SwiftToolsSupport-auto", "Logging", "ArgumentParser"]),
        .testTarget(
            name: "onairTests",
            dependencies: ["onair"]),
    ]
)
