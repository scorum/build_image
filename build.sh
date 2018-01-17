#!/bin/bash

WORKSPACE=~/build_temp

BOOST_PREFIX="$WORKSPACE/boost_root/"

CORES=$(nproc)

mkdir "${WORKSPACE}"
cd "${WORKSPACE}"

compile_boost() 
{
    wget http://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.gz

    tar -xf boost_1_60_0.tar.gz

    cd boost_1_60_0

    ./bootstrap.sh --prefix="${BOOST_PREFIX}"
    ./b2 -j${CORES} install
}

compile_boost
