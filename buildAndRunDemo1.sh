#!/bin/bash

set -eux
rootdir=${PWD}

cd ${rootdir}
mkdir buildD1 || true
cd buildD1
cmake ../Demo1
make

export LD_LIBRARY_PATH=/usr/local/lib;
./demo1

