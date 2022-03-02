# godot-cpp-ci
Docker image and Github Actions to automatically compile Godot C++ GDExtension libraries.

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
| Windows | :heavy_check_mark: | :heavy_check_mark: |
| Linux   | :heavy_check_mark: | :heavy_check_mark: |
| macOS   | :heavy_check_mark: | :x:                |
| iOS     | :heavy_check_mark: | :x:                |
| Android | :heavy_check_mark: | :x:                |
| Web     | :heavy_check_mark: | :x:                |

## Frequently Asked Questions (FAQ)

### 1. Why is the version of Emscripten set to `3.1.64` and not to the lastest one?

Later versions of Emscripten might introduce breaking changes that are not compatible with the Godot API.  
The Emscripten version used by Godot can be checked here:  
https://github.com/godotengine/godot/blob/master/.github/workflows/web_builds.yml

### 2. Can be thread support be enabled for GitHub pages?

No, unless Github pages starts supporting SharedArrayBuffer in a future update.