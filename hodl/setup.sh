#!/bin/bash

# Note: these deps may not all be required
sudo apt-get install automake autoconf libcurl4-openssl-dev libssl-dev -y

git clone https://github.com/Optiminer/hodlminer-wolf.git
cd hodlminer-wolf

./autogen.sh
./configure CFLAGS="-O3"
make
