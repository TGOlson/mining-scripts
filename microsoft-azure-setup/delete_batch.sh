#!/bin/bash

resourcegroup=hardhatresourcegroup
nameprefix=hardhat

for i in {5..15}
do
  echo "************************ Deleting miner $i in resource group $resourcegroup ************************"
  az vm delete \
    -n "$nameprefix$i" \
    -g $resourcegroup \
    -y \
    --no-wait
done
