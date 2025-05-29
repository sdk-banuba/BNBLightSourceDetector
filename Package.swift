// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.0-66-g886631a577"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.0-66-g886631a577/BNBLightSourceDetector.zip",
            checksum: "8627bc0408529baff4cae5c0cd009e1de8df575906e61bed3583a4e19639053f"
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
