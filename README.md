# <b>How to run local testnet</b>

## Single-node testnet

The single-node testnet is the must have for developers who want to run local testnet with the minimum requirements. Having full functionality you can test your plugins, SDKs, services and so on.

</br>

So, to run it follow the step below

<div align="center">

<b>NOTE: this setup is related to run testnet with dev_tachyon workflow. dev0 pack used to interact with hostchain</b>

</div>
</br>

1. Make sure you have appropriate Docker image for pre-build envirounment with installed Node.js, Go, Python, Git and so on. If you don't have - clone the image and create the container.

```bash

docker pull klyntar/all_in_one:v3.0.0

docker run -dtp 7331:7331 --name klyntar_node klyntar/all_in_one:v3.0.0

# Go into container

docker exec -ti bash klyntar_node

# Chose the directory

cd ~

```

1. Clone the <code>KlyntarCore</code> repository

```bash
git clone https://github.com/KLYN74R/KlyntarCore.git
```

2. Run a single command to fetch all the dependencies and run a build script

```bash
pnpm run build
```

3. Now you need to install dependencies to interact with hostchain

```bash

cd ~/KlyntarCore/KLY_Hostchains/dev0

pnpm install

```

4. Also, you need to install dependencies to use KLY-EVM

```bash

cd ~/KlyntarCore/KLY_VMs/kly_evm

```

5. Now everything is ready and you need to choose the directory for your symbiote

```bash

cd ~

mkdir kly_testnet

```

6. Now, you need to add genesis and configs directories to this dir. For this, use the examples from this repository

```bash

cd kly_testnet

mkdir CONFIGS GENESIS

# Set genesis file
cd GENESIS

wget 
```

7. Hence the net starts with genesis and rely on timestamp, to avoid interaction with hostchain here, you need to get the current timestamp

```bash

node -e "console.log(new Date().getTime())"

```

8. Modify the genesis file and set the new timestamp

```bash

nano GENESIS/genesis.json

```

```json

"CHECKPOINT_TIMESTAMP":1673995948674

```

9. Set the env variables


```bash

export KLY_MODE=test

export SYMBIOTE_DIR=~/kly_testnet

```

10. Finally, run the node


```bash
klyntar
```

## Multi-node testnet

Coming soon