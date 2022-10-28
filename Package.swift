// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlaxhenryStocksAPI",
    platforms: [
        // 사용 가능한 플랫폼 설정
        .iOS(.v13), .macOS(.v12), .macCatalyst(.v13), .tvOS(.v13), .watchOS(.v8)
    ],
    products: [
        .library(
            name: "AlaxhenryStocksAPI",
            targets: ["AlaxhenryStocksAPI"]),
        .executable(name: "AlaxhenryStocksAPIExec",
                    targets: ["AlaxhenryStocksAPIExec"])
    ],
    targets: [
        .target(
            name: "AlaxhenryStocksAPI",
            dependencies: []),
        .executableTarget(name: "AlaxhenryStocksAPIExec",
                          dependencies: ["AlaxhenryStocksAPI"]),
        .testTarget(
            name: "AlaxhenryStocksAPITests",
            dependencies: ["AlaxhenryStocksAPI"]),
    ]
)
