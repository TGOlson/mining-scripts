#!/bin/bash

location="$1"

ssh $location screen -m -d './miner --server zec-us-west1.nanopool.org --user TODOaddress.$(hostname)/TODOemail --pass z --port 6666'
