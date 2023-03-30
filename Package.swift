// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "CompilerCrash",
    products: [
        .library(name: "CompilerCrash", targets: ["CompilerCrash"]),
    ],
    targets: [
        .target(name: "Legacy"),
        .target(name: "CompilerCrash", dependencies: ["Legacy"]),
    ]
)
