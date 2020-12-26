FROM ubuntu:focal
LABEL author="https://github.com/2shady4u/godot-cpp-ci/graphs/contributors"

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    git \
    git-lfs \
    python \
    python-openssl \
    unzip \
    wget \
    zip \
    build-essential \
    scons \
    pkg-config \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libgl1-mesa-dev \
    libglu-dev \
    libasound2-dev \
    libpulse-dev \
    libudev-dev \
    libxi-dev \
    libxrandr-dev \
    yasm \ 
    # Install Windows cross-tools
    mingw-w64 \
    && rm -rf /var/lib/apt/lists/*