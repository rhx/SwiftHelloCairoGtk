// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "HelloCairoGtk",
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("main")),
        .package(name: "Gtk", url: "https://github.com/rhx/SwiftGtk.git", .branch("gtk3")),
    ],
    targets: [
        .target(name: "HelloCairoGtk", dependencies: ["Gtk"]),
    ]
)
