// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bitcoinleveldb",
    products: [
        .library(name: "bitcoinleveldb", targets: ["bitcoinleveldb"])
    ],
    dependencies: [
        .package(url: "https://github.com/amraboelela/boost", .branch("master")),
        .package(url: "https://github.com/amraboelela/leveldb", .branch("master")),
    ],
    targets: [
        .target(name: "bitcoinleveldb", dependencies: ["leveldb", "boost"])
    ]
)
