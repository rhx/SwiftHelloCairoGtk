// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "HelloCairoGtk",
    dependencies: [
        .package(name: "Gtk", url: "https://github.com/rhx/SwiftGtk.git", .branch("master")),
    ],
    targets: [
        .target(name: "HelloCairoGtk", dependencies: ["Gtk"]),
    ]
)
