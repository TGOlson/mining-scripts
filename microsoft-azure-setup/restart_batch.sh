#!/bin/bash

resourcegroup=hardhatxmr
nameprefix=westus2hh

for i in {1..50}
do
  echo "************************ Restarting miner $i in resource group $resourcegroup ************************"
  az vm restart \
    -n "$nameprefix$i" \
    -g $resourcegroup \
    --no-wait
done
