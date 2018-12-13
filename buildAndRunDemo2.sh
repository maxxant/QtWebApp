#!/bin/bash

set -eux
rootdir=${PWD}

cd ${rootdir}
mkdir buildD2 || true
cd buildD2
cmake ../Demo2
make

export LD_LIBRARY_PATH=/usr/local/lib;
./demo2

