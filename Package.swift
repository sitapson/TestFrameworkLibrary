// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
// edit for the sake of it

import PackageDescription

let package = Package(
    name: "TestFrameworkLibrary",
    platforms: [
        .iOS(.v16) // iOS version target
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestFrameworkLibrary",
            targets: ["TestFramework"]),
    ],
    targets: [
        // The destination of the framework you will obfuscate the code
        .binaryTarget(name: "TestFramework", path: "./Sources/TestFramework.xcframework")
    ]
)
