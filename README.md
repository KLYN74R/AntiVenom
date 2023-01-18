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

docker exec -ti klyntar_node bash

# Chose the directory

cd ~

```

1. Clone this repository

```bash
git clone https://github.com/KLYN74R/AntiVenom.git

cd AntiVenom
```

2. Make build script executable

```bash
chmod 700 build_single_node_testnet.sh
```

3. Run the build script and take a rest

```bash
./build_single_node_testnet.sh
```

4.  Finally, you can run the node

```bash
klyntar
```

## What you have on this step

1. Local testnet(symbiote) with a single validator
2. Validator keypair is

```json
{
    prv:"af837c459929895651315e878f4917c7622daeb522086ec95cfe64fed2496867",
    pub:"7GPupbq1vtKUgaqVeHiDbEJcxS7sSjwPnbht4eRaDBAEJv8ZKHNCSu2Am3CuWnHjta"
}
```
3. Hostchain defined as <code>kly-evm</code> - it was local runned ETH node(Geth client), but we can avoid using it in this setup
4. Enabled KLY-EVM. The web3 EVM-compatible API available via <code>http://localhost:7331/kly_evm_rpc</code>

</br>

<div align="center">

<b>NOTE: Insofar as we avoid moment interaction with hostchain - you should reset your node each day</b>

</div>

</br>

## Multi-node testnet

Coming soon