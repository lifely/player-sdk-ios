// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DailymotionPlayerSDK",
  platforms: [.iOS(.v13)],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "DailymotionPlayerSDK",
      targets: ["DailymotionPlayerSDKAgregate"]),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios.git", .exact("3.26.1"))
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .binaryTarget(
      name: "DailymotionAdvertisingServices",
      path: "Frameworks/AdvertisingFramework/DailymotionAdvertisingServices.xcframework"
    ),
    .binaryTarget(
      name: "DailymotionChromecast",
      path: "Frameworks/DailymotionChromecast/DailymotionChromecast.xcframework"
    ),
    .binaryTarget(
      name: "GoogleCast",
      path: "Frameworks/DailymotionChromecast/GoogleCast.xcframework"
    ),
    .binaryTarget(
      name: "DailymotionPlayerSDK",
      path: "Frameworks/DailymotionPlayer/DailymotionPlayerSDK.xcframework"
    ),
    .binaryTarget(
      name: "OMSDK_Dailymotion3",
      path: "Frameworks/AdvertisingFramework/OMSDK_Dailymotion3.xcframework"
    ),
    .target(
      name: "DailymotionPlayerSDKAgregate",
      dependencies: [
        .target(name: "GoogleCast"),
        .target(name: "OMSDK_Dailymotion3"),
        .target(name: "DailymotionPlayerSDK"),
        .target(name: "DailymotionChromecast"),
        .target(name: "DailymotionAdvertisingServices"),
        .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
      ],
      path: "DailymotionPlayerSDKAgregate"
    )
  ]
)
