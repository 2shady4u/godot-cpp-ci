# godot-cpp-ci
Docker image and Github Actions to automatically compile Godot C++ GDNative libraries.

**Github Actions:**  

[![🏁 Windows Builds](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/windows_builds.yml/badge.svg?branch=main)](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/windows_builds.yml)
[![🐧 Linux Builds](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/linux_builds.yml/badge.svg?branch=main)](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/linux_builds.yml)
[![🍎 macOS Builds](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/macos_builds.yml/badge.svg?branch=main)](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/macos_builds.yml)
[![🍏 iOS Builds](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/ios_builds.yml/badge.svg?branch=main)](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/ios_builds.yml)
[![🤖 Android Builds](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/android_builds.yml/badge.svg?branch=main)](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/android_builds.yml)
[![🌐 Javascript Builds](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/javascript_builds.yml/badge.svg?branch=main)](https://github.com/2shady4u/godot-cpp-ci/actions/workflows/javascript_builds.yml)

Exported HMTL5 build is deployed [here](https://2shady4u.github.io/godot-cpp-ci/).

**Gitlab Runners:**

[![Pipeline Status](https://gitlab.com/2shady4u/godot-cpp-ci/badges/main/pipeline.svg)](https://gitlab.com/2shady4u/godot-cpp-ci/-/pipelines)

Heavily inspired and based on both the CI/CD provided by [godot-ci](https://github.com/aBARICHELLO/godot-ci) and the automated workflow of [Godot](https://github.com/godotengine/godot) itself.

## Docker Hub
https://hub.docker.com/r/ponders/godot-cpp-ci/

## Gitlab Mirror

This repository is mirrored to Gitlab [here](https://gitlab.com/2shady4u/godot-cpp-ci).

## How To Use

`.gitlab-ci.yml` and `.github/workflows/*.yml` are included in this project as reference. In most cases, just copying them to your own repository does the job.

### Android

For android compilation purposes, a special `Android.mk`-file as well as a `jni/Application.mk`-file are included in the `gdnative_cpp_example`-folder.

Again, those files need to be copied and modified for your own repository purposes.

## Availability Matrix

|         | Github             | Gitlab             |
|---------|:------------------:|:------------------:|
| windows | :heavy_check_mark: | :heavy_check_mark: |
|   x11   | :heavy_check_mark: | :heavy_check_mark: |
|   osx   | :heavy_check_mark: | :x:                |
|   ios   | :heavy_check_mark: | :x:                |
| android | :heavy_check_mark: | :x:                |
|  html5  | :heavy_check_mark: | :x:                |

## Frequently Asked Questions (FAQ)

### 1. Why does this repository export to the `release`-target by default?

Exporting to the `debug`-target gives potential dependency problems, especially on Windows, that might break your plugin for users that don't have any dev environment set up on their device.

In those cases, Godot will fail to load the library and print an error of following form (or similar):
```
Can't open dynamic library: bin/win64/libgdexample.dll, error: Error 126: The specified module could not be found.
.
modules/gdnative/gdnative.cpp:501 - No valid library handle, can't get symbol from GDNative object
modules/gdnative/nativescript/nativescript.cpp:1506 - No nativescript_init in "res://bin/win64/libgdexample.dll" found
```

These kind of errors might not be apparent on your development machine, so it's always a good idea to check for this kind of issues on a non-development machine!

Handy tool for checking for missing dependencies of any `*.dll` can be found [here](https://github.com/lucasg/Dependencies).  


