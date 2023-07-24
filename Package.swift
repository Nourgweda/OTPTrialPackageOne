// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OTPTrialPackageOne",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "OTPTrialPackageOne",
            targets: ["OTPTrialPackageOne"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OTPTrialPackageOne",
            dependencies: []),
        .testTarget(
            name: "OTPTrialPackageOneTests",
            dependencies: ["OTPTrialPackageOne"]),
    ]
)
