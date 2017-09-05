#!/bin/bash

sudo apt-get install automake autoconf libcurl4-openssl-dev libssl-dev -y
git clone https://github.com/tpruvot/ccminer.git
cd ccminer

# https://github.com/tpruvot/ccminer/wiki/Compatibility
echo "*** Add following line line to Makefile.am ***"
echo "nvcc_ARCH = -gencode=arch=compute_35,code=\"sm_37,compute_35\""

# *** Uncomment below lines after adding arch type to Makefile
# ./autogen.sh
# ./configure
# ./build.sh
