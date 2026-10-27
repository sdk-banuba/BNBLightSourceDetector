// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.18.6"

let package = Package(
    name: "BNBLightSourceDetector",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "BNBLightSourceDetector",
            targets: [
                "BNBLightSourceDetector",
                "BNBLightSourceDetector_BNBSdkCore",
                "BNBLightSourceDetector_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBLightSourceDetector",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.6/BNBLightSourceDetector.zip",
            checksum: "d082d6694b58f9184c570ab0ec7cb1f622b6533c688f39c2bfe128123c694437"
        ),
        .target(
            name: "BNBLightSourceDetector_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBLightSourceDetector_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
