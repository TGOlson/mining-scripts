#!/bin/bash

# ethminer quick setup script

echo "Running ethminer quick setup script"

# install ethminer (https://github.com/ethereum-mining/ethminer)
echo "Installing ethminer"
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.11.0/ethminer-0.11.0-Linux.tar.gz
tar xvzf ethminer-0.11.0-Linux.tar.gz

# setup nvidia drivers (https://forum.ethereum.org/discussion/comment/8889/#Comment_8889)
echo "Setting up nvidia drivers"
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda -y
