// swift-tools-version: 5.10


///
import PackageDescription

///
let package = Package(
    name: "HasCustomUUIDType-package",
    products: [
        .library(
            name: "HasCustomUUIDType-module",
            targets: ["HasCustomUUIDType-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/DistinctType-package",
            "0.1.0" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "HasCustomUUIDType-module",
            dependencies: [
                .product(name: "DistinctType-module", package: "DistinctType-package"),
            ]
        ),
        .testTarget(
            name: "HasCustomUUIDType-module-tests",
            dependencies: [
                "HasCustomUUIDType-module",
            ]
        ),
    ]
)
