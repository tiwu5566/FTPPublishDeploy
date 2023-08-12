// swift-tools-version:5.5

/**
*  FTPPublishDeploy
*  Copyright (c) Ti Wu 2023
*  MIT license, see LICENSE file for details
*/

import PackageDescription

let package = Package(
    name: "FTPPublishDeploy",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "FTPPublishDeploy",
            targets: ["FTPPublishDeploy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/files.git", from: "4.0.0"),
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
        .package(url: "https://github.com/johnsundell/shellout.git", from: "2.3.0"),
    ],
    targets: [
        .target(
            name: "FTPPublishDeploy",
            dependencies: [
                .product(name: "Files", package: "files"),
                .product(name: "Publish", package: "publish"),
                .product(name: "ShellOut", package: "shellout")
            ]
        ),
    ]
)
