// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MQTTClient",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "MQTTClient", targets: ["MQTTClient"]),
    ],
    dependencies: [
        .package(name: "SocketRocket", url: "https://github.com/alvar-bolt/SocketRocket", .branch("spm-support")),
    ],
    targets: [
        .target(
            name: "MQTTClient",
            dependencies: [
                "SocketRocket",
            ],
            path: "MQTTClient/MQTTClient",
            exclude: [
                "include/MQTTSessionManager.h",
                "MQTTSessionManager.m",
                "include/ReconnectTimer.h",
                "ReconnectTimer.m",
                "include/ForegroundReconnection.h",
                "ForegroundReconnection.m",
                "MQTTClient-Prefix.pch"
            ]
        )
    ]
)
