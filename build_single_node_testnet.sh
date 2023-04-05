cd ~


# Clone the KlyntarCore repository

echo -e "\e[42mCloning repository ...\e[49m"

git clone https://github.com/KLYN74R/KlyntarCore.git


# Run a single command to fetch all the dependencies and run a build script

cd KlyntarCore

# Switch the branch to version with binding to subchain(2nd level of sharding)

git checkout bind_to_subchain_with_single_evm

# Load dependencies & run build scripts

pnpm run build

# Now you need to install dependencies to interact with hostchain

cd ~/KlyntarCore/KLY_Hostchains/dev0

echo -e "\e[42mLoad dependencies for hostchain pack ...\e[49m"

pnpm install


# Also, you need to install dependencies to use KLY-EVM

echo -e "\e[42mLoad dependencies for KLY-EVM ...\e[49m"

cd ~/KlyntarCore/KLY_VMs/kly-evm

pnpm install

# Now everything is ready and you need to choose the directory for your symbiote

cd ~

mkdir kly_testnet


# Now, you need to add genesis and configs directories to this dir. For this, use the examples from this repository

cd kly_testnet

mkdir CONFIGS GENESIS

# Set genesis file - load from example

cd GENESIS

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/genesis_simplest.json

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/time_update.js

node time_update.js

# Delete useless, non-json file

rm time_update.js


# Load required configs

cd ../CONFIGS

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/common.json

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/evm.json

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/klyntar_vm.json

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/network.json

wget https://raw.githubusercontent.com/KLYN74R/AntiVenom/bind_to_subchain_with_single_evm/sources/workflow.json


echo -e "\e[42mEverything is ok - you can run your node\e[49m"