#! /usr/bin/env bash
# ubuntu 18.04

# download & prep openbr
git clone https://github.com/biometrics/openbr.git
cd openbr
git checkout v1.1.0
git submodule init
git submodule update

# build openbr
mkdir build # from the OpenBR root directory
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j6
sudo make install
