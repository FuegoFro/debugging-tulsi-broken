git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    commit = "0b8685638e2d311790eb74ad01f495854bb8bfe3"
)

new_http_archive(
  name = 'PINFuture',
  url = 'https://github.com/chrisdanford/PINFuture/archive/07fb96f68b5df102d741a31ff684035bbf39a9b7.zip',
  sha256 = '4fa333e55ca2eebce5bd3c18ea4dd5ac8f0655da7626627697405e6d7ebe75bf',
  strip_prefix = "PINFuture-07fb96f68b5df102d741a31ff684035bbf39a9b7/PINFuture",
  build_file_content = """
HDRS = glob(["Classes/**/*.h"])
objc_library(
  name = "lib",
  hdrs = HDRS,
  srcs = glob(["Classes/**/*.m"]),
  includes = [
    "Classes",
    "Classes/Categories"
  ],
  copts = ["-w"],
  sdk_frameworks = [
    "AssetsLibrary",
    "Photos"
  ],
  visibility = ["//visibility:public"]
)

# Copy headers so it feels like CocoaPods
[genrule(
  name = "hdrs-" + f,
  srcs = [f],
  outs = [f.split('/')[-1]],
  cmd = 'cp $(SRCS) $@'
) for f in HDRS]
"""
)
