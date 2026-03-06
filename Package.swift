// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.18.0"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.0/BNBLightSourceDetector.zip",
            checksum: "05a360092f88319f25d31e29a8c348ea24f129b264ae851ddd6812e2ec9c6b49"
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
