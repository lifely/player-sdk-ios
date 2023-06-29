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
      targets: ["DailymotionPlayerSDK","DailymotionAdvertisingServices", "GoogleInteractiveMediaAds", "OMSDK_Dailymotion"]),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .binaryTarget(
      name: "DailymotionAdvertisingServices",
      path: "Frameworks/AdvertisingFramework/DailymotionAdvertisingServices.xcframework"
    ),
    .binaryTarget(
      name: "DailymotionPlayerSDK",
      path: "Frameworks/DailymotionPlayer/DailymotionPlayerSDK.xcframework"
    ),
    .binaryTarget(
      name: "GoogleInteractiveMediaAds",
      path: "Frameworks/AdvertisingFramework/GoogleInteractiveMediaAds.xcframework"
    ),
    .binaryTarget(
      name: "OMSDK_Dailymotion",
      path: "Frameworks/AdvertisingFramework/OMSDK_Dailymotion.xcframework"
    )
  ]
)