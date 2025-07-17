// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.4"

let package = Package(
    name: "BNBLightSourceDetector",
    platforms: [
        .iOS(.v13)
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.4/BNBLightSourceDetector.zip",
            checksum: "02f88ab4b43c64fae1fbf0e64bfa7a2dab7028d7cebdc2998e9df67e4de25890"
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
