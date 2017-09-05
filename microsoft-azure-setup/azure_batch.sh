#!/bin/bash

location=eastus

for i in {1..20}
do
  echo "************************ Starting setting up miner $i in $location ************************"
  ./azure_setup.sh $location $i
  echo "************************ Finished setting up miner $i in $location ************************"
done
