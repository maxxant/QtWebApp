#!/bin/bash

set -eux
rootdir=${PWD}

cd ${rootdir}
mkdir buildD2 || true
cd buildD2
cmake ../Demo2
make

cd ${rootdir}/Demo2
export LD_LIBRARY_PATH=/usr/local/lib;
../buildD2/demo2

