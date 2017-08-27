#!/bin/bash

location="$1"

ssh $location screen -m -d "xmr-stak-cpu/bin/xmr-stak-cpu miner_config.txt"

echo "Mining $location"
