#!/bin/bash

location="$1"

scp -r scripts miner_config.txt $location:~/
ssh -i $location -t "./scripts/setup.sh"

echo "Setup for $location complete"
