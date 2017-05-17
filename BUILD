load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

objc_library(
  name = "Core",
  srcs = glob(["Sources/**/*.m"]),
  hdrs = glob(["Sources/**/*.h"])
)

objc_library(
  name = "Lib",
  srcs = glob([
    "*.m",
    "*.h"
  ]),
  deps = [":Core"],
  resources = [
    ":Main.storyboard"
  ]
)

ios_application(
  name = "FullBazelSample",
  bundle_id = "com.pinterest.fullbazelsample",
  families = ["iphone"],
  infoplists = [":Info.plist"],
  deps = [":Lib"],
  minimum_os_version = "9.0"
)

