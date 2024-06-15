<p align="left">
  <a href="https://stacks.co">
    <img alt="BitStacks" src="https://github.com/bitnet-io/stacks-core-bitnet/releases/download/Stacks-2.0-for-Bitcoin-people/zzwnCnY.png" width="250" />
  </a>
</p>


```
just a reminder....

"Bitstacks only works with BitStacks Blockchain and Bitnet IO Blockchain....

IT DOES *NOT* ALSO WORK WITH STACKS FOR BITCOIN

IF YOU SEND BITSTACKS TO A REGULAR STACKS ADDRESS AND NOT A BITSTACKS ADDRESS IT WILL BE LOST BETWEEN INCOMPATIBLE CHAINS"

CURRENTLY THERE IS NO BRIDGE BETWEEN STACKS AND BITSTACKS
```
# requires a synced Bitnet daemon and stacks.js for bitnet to make a keychain

# https://github.com/bitnet-io/bitnet-core

# https://github.com/bitnet-io/stacks.js/releases/tag/patched-for-bitnet

building the project using rustc and cargo

```
cargo build --release
```

then modify Config.toml and run stacks-core while bitnetd is running and the keychain is imported into bitnetd with bitnet-cli importprivkey "private-key-wif-that-was-generated"

https://github.com/bitnet-io/stacks-core-bitnet/blob/master/Config.toml

```
./target/release/stacks-node start --config Config.toml
```

# BitStacks Blockchain

Reference implementation of the [Stacks blockchain](https://github.com/stacks-network/stacks) in Rust.

Stacks is a layer-2 blockchain that uses Bitcoin as a base layer for security and enables decentralized apps and predictable smart contracts using the [Clarity language](https://clarity-lang.org/). Stacks implements [Proof of Transfer (PoX)](https://community.stacks.org/pox) mining that anchors to Bitcoin security. Leader election happens at the Bitcoin blockchain and Stacks (STX) miners write new blocks on the separate Stacks blockchain. With PoX there is no need to modify Bitcoin to enable smart contracts and decentralized apps.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg?style=flat)](https://www.gnu.org/licenses/gpl-3.0)
[![Release](https://img.shields.io/github/v/release/stacks-network/stacks-blockchain?style=flat)](https://github.com/stacks-network/stacks-blockchain/releases/latest)
[![Build Status](https://github.com/stacks-network/stacks-blockchain/actions/workflows/ci.yml/badge.svg?branch=master&event=workflow_dispatch&style=flat)](https://github.com/stacks-network/stacks-blockchain/actions/workflows/ci.yml?query=event%3Aworkflow_dispatch+branch%3Amaster)
[![Discord Chat](https://img.shields.io/discord/621759717756370964.svg)](https://stacks.chat)

## Building

### 1. Download and install Rust

_For building on Windows, follow the rustup installer instructions at https://rustup.rs/._

```bash
apt update
apt install build-essential nano curl 
 curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup component add rustfmt
```

- When building the [`master`](https://github.com/stacks-network/stacks-blockchain/tree/master) branch, ensure you are using the latest stable release:

```bash
rustup update
```

### 2. Clone the source repository:

```bash
git clone --depth=1 https://github.com/bitnet-io/stacks-core-bitnet.git
cd stacks-core-bitnet
```

### 3. Build the project

```bash
cargo update
cargo build --release
```

## Testing

**Run the tests:**

```bash
$ cargo test testnet  -- --test-threads=1
```

**Run all unit tests in parallel using [nextest](https://nexte.st/):**

_Warning, this typically takes a few minutes_
```bash
$ cargo nextest run
```

## Run the testnet

You can observe the state machine in action locally by running:

```bash
$ cd testnet/stacks-node
$ cargo run --bin stacks-node -- start --config ./conf/testnet-follower-conf.toml
```

_On Windows, many tests will fail if the line endings aren't `LF`. Please ensure that you are have git's `core.autocrlf` set to `input` when you clone the repository to avoid any potential issues. This is due to the Clarity language currently being sensitive to line endings._

Additional testnet documentation is available [here](./docs/testnet.md) and [here](https://docs.stacks.co/docs/nodes-and-miners/miner-testnet)

## Release Process

The release process for the stacks blockchain is [defined here](./docs/release-process.md)

## Further Reading

You can learn more by visiting [the Stacks Website](https://stacks.co) and checking out the documentation:

- [Stacks docs](https://docs.stacks.co/)
- [Stacks Improvement Proposals (SIPs)](./docs/SIPS.md)
- [Mining](./docs/mining.md)
- [Profiling](./docs/profiling.md)
- [RPC endpoints](./docs/rpc-endpoints.md)
- [Event dispatcher](./docs/event-dispatcher.md)

You can also read the technical papers:

- ["PoX: Proof of Transfer Mining with Bitcoin"](https://community.stacks.org/pox), May 2020
- ["Stacks 2.0: Apps and Smart Contracts for Bitcoin"](https://stacks.org/stacks), Dec 2020

## Copyright and License

The code and documentation copyright are attributed to stacks.org.

This code is released under the [GPL v3 license](https://www.gnu.org/licenses/quick-guide-gplv3.en.html), and the docs are released under the [Creative Commons license](https://creativecommons.org/).
