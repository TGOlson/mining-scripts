# mining-scripts

Util scripts for setting up remote Linux crypto mining machines.

TODO: make scripts more generic by paramaterizing pool location, wallet address, email, etc.

#### ethereum

* Mines using [etherminer](https://github.com/ethereum-mining/ethminer) GPU miner
* Submits work to dwarfpool US servers
* Fill in wallet and email todos in `ethereum/run_mine.sh` before running

#### monero

* Mines using [xmr-stak-cpu](https://github.com/fireice-uk/xmr-stak-cpu.git) CPU miner
* Submits work to nanopool US West servers
* Fill in wallet and email todos in `monero/miner_config.txt` before running
* Set to run using 8 CPUs, can modify in `monero/miner_config.txt`

#### zcash

* Mines using [nheqminer](https://github.com/nicehash/nheqminer) GPU miner
* Submits work to nanopool US West servers
* Fill in wallet and email todos in `zcash/run_mine.sh` before running
