#!/bin/bash

location="$1"
num="$2"

if [ -z "$location" ]; then
    echo "Need to set location. Options: westus2, eastus, eastus2, centralus, southcentralus"
    exit 1
fi

if [ -z "$num" ]; then
    echo "Need to set num"
    exit 1
fi

name="${location}hh${num}"

echo "Creating $name"

az vm create \
  -n "$name" \
  -g hardhatxmr \
  --admin-username hardhat \
  --authentication-type ssh \
  --image ubuntults \
  --location $location \
  --public-ip-address-dns-name "$name" \
  --size Standard_F16s \
  --ssh-key-value ~/.ssh/azure_rsa.pub
  # --no-wait

fullpath="$name.$location.cloudapp.azure.com"

scp -o StrictHostKeyChecking=no -i ~/.ssh/azure_rsa -r monero/scripts monero/miner_config.txt hardhat@"$fullpath":~/
ssh -i ~/.ssh/azure_rsa hardhat@"$fullpath" -t "./scripts/setup.sh"
ssh -i ~/.ssh/azure_rsa hardhat@"$fullpath" screen -m -d "xmr-stak-cpu/bin/xmr-stak-cpu miner_config.txt"
