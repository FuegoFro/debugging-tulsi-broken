## CROSSTOOL override seems to not work

Note: I've commented out the osx_tools needed for the crosstool

```python
[
    filegroup(
        name = "osx_tools_" + arch,
        srcs = [
#          ":cc_wrapper",
#          ":libtool",
#          ":make_hashed_objlist.py",
#          ":wrapped_clang",
#          ":xcrunwrapper.sh",
        ],
    )
    for arch in OSX_TOOLS_ARCHS
]
```

Running however does not fail, the build is using the built-in crosstool:

```bash
bazel build ':FullBazelSample' --crosstool_top=//local_config_cc:toolchain --apple_crosstool_top=//local_config_cc:toolchain
```

On:

```
𝝺 bazel version
Build label: 0.5.0
Build target: bazel-out/local-fastbuild/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Fri May 26 12:11:50 2017 (1495800710)
Build timestamp: 1495800710
Build timestamp as int: 1495800710
```

