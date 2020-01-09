FROM ubuntu:16.04

# Update package list
RUN apt-get update

# Install git
RUN apt-get install -y git

# Install gcc
RUN apt-get install -y build-essential

# Install CMake
RUN apt-get install -y cmake

# Install Qt5
RUN apt-get install -y qt5-default libfontconfig1

# Install OpenGL
RUN apt-get install -y mesa-common-dev libglu1-mesa-dev -y

# Install GTest
RUN apt-get install libgtest-dev && \
    cd /usr/src/gtest/ && \
    cmake -DBUILD_SHARED_LIBS=ON && \
    make && \
    cp *.so /usr/lib
