ARG ubuntu_tag=latest

FROM ubuntu:${ubuntu_tag}

# Install dependencies.
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git \
    build-essential \
    cmake \
    qt5-default  \
    libfontconfig1 \
    mesa-common-dev  \
    libglu1-mesa-dev \
    libgtest-dev

# Build GTest
RUN cd /usr/src/gtest/ && \
    cmake -DBUILD_SHARED_LIBS=ON && \
    make && \
    cp *.so /usr/lib

# Cleanup
RUN rm -rf /var/lib/apt/lists/*
