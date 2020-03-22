// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TelegramBotSDKVaporProvider",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "TelegramBotSDKVaporProvider",
            targets: ["TelegramBotSDKVaporProvider"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/rapierorg/telegram-bot-swift.git", from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "TelegramBotSDKVaporProvider",
            dependencies: [
                "Vapor",
                "TelegramBotSDK",
            ]),
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
