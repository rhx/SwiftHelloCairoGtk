// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "HelloCairoGtk",
    dependencies: [
        .package(url: "https://github.com/rhx/SwiftGtk.git", branch: "monorepo"),
    ],
    targets: [
        .executableTarget(name: "HelloCairoGtk", dependencies: [
            .product(name: "Gtk", package: "SwiftGtk")
        ]),
    ]
)
