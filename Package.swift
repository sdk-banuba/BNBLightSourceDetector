// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.2"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.2/BNBLightSourceDetector.zip",
            checksum: "65b56a7086da5a01f566b9d667c4375e30cb255bfb7726f3e1abc8e0132195a4"
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
