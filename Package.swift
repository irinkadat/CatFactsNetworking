// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CatFactsNetworking",
    products: [
        .library(
            name: "CatFactsNetworking",
            targets: ["CatFactsNetworking"]),
    ],
    targets: [
        .target(
            name: "CatFactsNetworking"),
        .testTarget(
            name: "CatFactsNetworkingTests",
            dependencies: ["CatFactsNetworking"]),
    ]
)
