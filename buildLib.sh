#!/bin/bash

set -eux

rootdir=${PWD}

mkdir build || true
cd build
cmake ../QtWebApp
make
sudo make install

