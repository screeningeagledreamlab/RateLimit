// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RateLimit",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "RateLimit",
            targets: ["RateLimit"]),
    ],
    targets: [
        .target(
            name: "RateLimit",
            path: "RateLimit",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "RateLimitTests",
            dependencies: ["RateLimit"],
            path: "Tests",
            exclude: ["Info.plist"]),
    ]
)
