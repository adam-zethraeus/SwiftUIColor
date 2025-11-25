// swift-tools-version: 6.2


import PackageDescription

let package = Package(
    name: "SwiftUIColor",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .watchOS(.v10),
        .macCatalyst(.v17),
        .tvOS(.v17),
        .driverKit(.v24)
    ],
    products: [
        .library(
            name: "SwiftUIColor",
            targets: ["SwiftUIColor"]
        ),
        .executable(
            name: "prepare-swiftui-color",
            targets: ["prepare-swiftui-color"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUIColor",
            dependencies: [],
            resources: [
                .process("Assets")
            ]
        ),
        .executableTarget(
            name: "prepare-swiftui-color"
        ),
        .testTarget(
            name: "SwiftUIColorTests",
            dependencies: ["SwiftUIColor"]
        ),
    ]
)
