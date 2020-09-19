// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GEFoundation",
    products: [
        .library(
            name: "GEFoundation",
            targets: ["GEFoundation"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/grigorye/GETracing", .branch("master"))
    ],
    targets: [
        .target(
            name: "GEFoundation",
            dependencies: [
                "GETracing"
            ],
            exclude: [
                "OSLogRDAR28599032.m",
                "OSLogRDAR28599032.h"
            ]
        ),
        .testTarget(
            name: "GEFoundationTests",
            dependencies: ["GEFoundation"]
        ),
    ]
)
