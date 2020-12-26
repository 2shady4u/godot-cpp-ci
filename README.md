# godot-cpp-ci
Docker image and Github Actions to automatically compile Godot C++ GDNative libraries.

**Github Actions:**  

![🏁 Windows Builds](https://github.com/2shady4u/godot-cpp-ci/workflows/%F0%9F%8F%81%20Windows%20Builds/badge.svg?branch=main)
![🐧 Linux Builds](https://github.com/2shady4u/godot-cpp-ci/workflows/%F0%9F%90%A7%20Linux%20Builds/badge.svg?branch=main)
![🍎 macOS Builds](https://github.com/2shady4u/godot-cpp-ci/workflows/%F0%9F%8D%8E%20macOS%20Builds/badge.svg?branch=main)
![🍏 iOS Builds](https://github.com/2shady4u/godot-cpp-ci/workflows/%F0%9F%8D%8F%20iOS%20Builds/badge.svg?branch=main)
![🤖 Android Builds](https://github.com/2shady4u/godot-cpp-ci/workflows/%F0%9F%A4%96%20Android%20Builds/badge.svg?branch=main)

**Gitlab Runners:**

![Pipeline Status](https://gitlab.com/2shady4u/godot-cpp-ci/badges/main/pipeline.svg)

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
