// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FFmpegKit",
    platforms: [
        .macOS(.v10_15),
        .iOS("12.1")
    ],
    products: [
        .library(
            name: "FFmpegKitiOS",
            targets: [
                "ffmpegkit-ios",
                "libavcodec-ios",
                "libavdevice-ios",
                "libavfilter-ios",
                "libavformat-ios",
                "libavutil-ios",
                "libswresample-ios",
                "libswscale-ios",
                "Common",
            ]
        ),

        .library(
            name: "FFmpegKitmacOS",
            targets: [
                "ffmpegkit-macos",
                "libavcodec-macos",
                "libavdevice-macos",
                "libavfilter-macos",
                "libavformat-macos",
                "libavutil-macos",
                "libswresample-macos",
                "libswscale-macos",
                "Common",
            ]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // iOS specific frameworks
        .binaryTarget(name: "ffmpegkit-ios", path: "ffmpeg-kit/ios/ffmpegkit.xcframework"),
        .binaryTarget(name: "libavcodec-ios", path: "ffmpeg-kit/ios/libavcodec.xcframework"),
        .binaryTarget(name: "libavdevice-ios", path: "ffmpeg-kit/ios/libavdevice.xcframework"),
        .binaryTarget(name: "libavfilter-ios", path: "ffmpeg-kit/ios/libavfilter.xcframework"),
        .binaryTarget(name: "libavformat-ios", path: "ffmpeg-kit/ios/libavformat.xcframework"),
        .binaryTarget(name: "libavutil-ios", path: "ffmpeg-kit/ios/libavutil.xcframework"),
        .binaryTarget(name: "libswresample-ios", path: "ffmpeg-kit/ios/libswresample.xcframework"),
        .binaryTarget(name: "libswscale-ios", path: "ffmpeg-kit/ios/libswscale.xcframework"),

        // macOS specific frameworks
        .binaryTarget(name: "ffmpegkit-macos", path: "ffmpeg-kit/macos/ffmpegkit.xcframework"),
        .binaryTarget(name: "libavcodec-macos", path: "ffmpeg-kit/macos/libavcodec.xcframework"),
        .binaryTarget(name: "libavdevice-macos", path: "ffmpeg-kit/macos/libavdevice.xcframework"),
        .binaryTarget(name: "libavfilter-macos", path: "ffmpeg-kit/macos/libavfilter.xcframework"),
        .binaryTarget(name: "libavformat-macos", path: "ffmpeg-kit/macos/libavformat.xcframework"),
        .binaryTarget(name: "libavutil-macos", path: "ffmpeg-kit/macos/libavutil.xcframework"),
        .binaryTarget(name: "libswresample-macos", path: "ffmpeg-kit/macos/libswresample.xcframework"),
        .binaryTarget(name: "libswscale-macos", path: "ffmpeg-kit/macos/libswscale.xcframework"),

        // linkages
        .target(
            name: "Common",
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("c++"),
            ]
        ),
    ]
)
