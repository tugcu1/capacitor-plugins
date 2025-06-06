// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorScreenReader",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorScreenReader",
            targets: ["ScreenReaderPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "ScreenReaderPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ScreenReaderPlugin"),
        .testTarget(
            name: "ScreenReaderPluginTests",
            dependencies: ["ScreenReaderPlugin"],
            path: "ios/Tests/ScreenReaderPluginTests")
    ]
)
