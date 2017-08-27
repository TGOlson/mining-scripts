#!/bin/bash

location="$1"

ssh $location screen -m -d './bin/ethminer -U -F http://eth-us2.dwarfpool.com:80/TODOaddress/$(hostname)/TODOemail'
