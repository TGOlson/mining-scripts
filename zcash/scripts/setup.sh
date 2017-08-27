#!/bin/bash

sudo apt-get install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev libboost-all-dev git -y

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda -y

LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64:/usr/local/cuda-8.0/lib64/stubs"
PATH="$PATH:/usr/local/cuda-8.0/"
PATH="$PATH:/usr/local/cuda-8.0/bin"

git clone https://github.com/nicehash/nheqminer.git
cd nheqminer/cpu_xenoncat/asm_linux/
chmod +x fasm
sh assemble.sh
cd ../../../
mkdir build && cd build
cmake -DCUDA_CUDART_LIBRARY=/usr/local/cuda/lib64/libcudart.so ../nheqminer
make -j $(nproc)
