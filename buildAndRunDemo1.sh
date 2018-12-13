#!/bin/bash

set -eux
rootdir=${PWD}

cd ${rootdir}
mkdir buildD1 || true
cd buildD1
cmake ../Demo1
make

cd ${rootdir}/Demo1
export LD_LIBRARY_PATH=/usr/local/lib;
../buildD1/demo1

