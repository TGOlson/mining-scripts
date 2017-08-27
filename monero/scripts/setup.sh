#!/bin/bash

sudo apt install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git -y
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
# use dev branch and remove line to avoid race conditions
# https://github.com/fireice-uk/xmr-stak-cpu/issues/293
git checkout --track origin/dev
sed -i 's/bindMemoryToNUMANode.*//' minethd.cpp
cmake .
make install

sudo sysctl -w vm.nr_hugepages=128
sudo bash -c 'echo "* soft memlock 262144" >> /etc/security/limits.conf'
sudo bash -c 'echo "* hard memlock 262144" >> /etc/security/limits.conf'

sed -i "s/xxworkerid/$(hostname)/" ~/azure_config.txt
