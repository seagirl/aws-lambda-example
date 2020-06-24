// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AWSLambdaExample",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .executable(name: "AWSLambdaExample", targets: ["AWSLambdaExample"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from: "0.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AWSLambdaExample",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
            ]),
        .testTarget(
            name: "AWSLambdaExampleTests",
            dependencies: ["AWSLambdaExample"]),
    ]
)
