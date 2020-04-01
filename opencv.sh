#! /usr/bin/env bash
# ubuntu 18.04

# installs opencv 2.4

sudo apt-get update

sudo apt install -y \
                build-essential \
                cmake \
                git \
                pkg-config \
                libgtk-3-dev \
                libavcodec-dev \
                libavformat-dev \
                libswscale-dev \
                libv4l-dev \
                libxvidcore-dev \
                libx264-dev \
                libjpeg-dev \
                libpng-dev \
                libtiff-dev \
                gfortran \
                openexr \
                libatlas-base-dev \
                python3-dev \
                python3-numpy \
                libtbb2 \
                libtbb-dev \
                libdc1394-22-dev
    
mkdir ~/opencv_build && cd ~/opencv_build
git clone --single-branch --branch 2.4 https://github.com/opencv/opencv.git

cd ~/opencv_build/opencv
mkdir build && cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D BUILD_EXAMPLES=ON ..
    
make -j4

sudo make install
