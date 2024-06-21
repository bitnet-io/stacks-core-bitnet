#runs without a shebang honest once it has chmod +x on the file

echo "THIS FILE IS FOR COIN DEVELOPERS WHO WANT CLARITY THINK LITECOIN, BCH, DOGECOIN, ETC"
echo ""
echo ""
echo ""
echo "
0x19 in hex is 25 for capital letter B for my network Bitnet IO
0x16 in hex is 22 for the P2SH values from Bitnet IO
0x9e in hex is 158 for the WIF values (used in the api or bitcoin-js or the @stacks/transactions nodes for other pieces of interlocking software for this

check my custom stacks.js/node_modules "oddly enough sometimes bitcoinjs-lib/network.js stays as 0x00 for p2pkh but uses p2sh 0x16 and still functions even though the network is 0x19 for 25

node_modules to consider c32check/src/address.ts only p2pkh 25 and p2sh 22 everything stays as 0 and 5 except for address $0 becomes address $25 must match c32.rs/address.rs p2pkh for SS instead of SP
nodes modules to consider c32check/src/encoding.ts \0000 = \0019 for 0x19 = 25 for Bitnet IO
node_modules to consider bitcoinjs-lib/src/networks.js
node_modules to consider @stacks/transactions/src/constants.ts (p2pkh and serializep2pkh ;;p2sh become 25, 22 and 0x19 0x16 when hex (and pox-mainnet.clar values must match stackslib/src/core/mod.rs)
node_modules to consider stacks-encoding-native-js/index.js 


your chainparams.cpp is different use accordingly

this is mine for BitStacks from the QT blockchain guts

https://github.com/bitnet-io/bitnet-core/blob/main/src/chainparams.cpp#L166-L182


https://en.bitcoin.it/wiki/List_of_address_prefixes

also requires other pubkey and pubstring blockchain insigned message

https://github.com/bitnet-io/bitnet-core/blob/main/src/chainparams.cpp#L56-L61

and nonce values and other values


including the PCH message announce between peers
mine is 0xE1D1E1D1

https://github.com/bitnet-io/bitnet-core/blob/main/src/chainparams.cpp#L114-L118
"


echo 
"

stackslib/src/core/mod.rs EPOCH ACTIVATION HAS TO HAVE ENOUGH SPACE BETWEEN STARTING POINTS OR POX WILL INTERNALLY BREAK GOING FROM POX EPOCH 2_0 into 2_05 and possible 2_1

pub const BITCOIN_MAINNET_STACKS_2_05_BURN_HEIGHT: u64 = 189_800;  <-- 2_05 must have enough space from 2_0 with blocks

pub const BITCOIN_MAINNET_STACKS_21_BURN_HEIGHT: u64 = 191_000;  <-- must have enough space for enough cycles to take place "think more than 1000 blocks"

pub const BITCOIN_MAINNET_STACKS_22_BURN_HEIGHT: u64 = 193_800; ... and so on
pub const BITCOIN_MAINNET_STACKS_23_BURN_HEIGHT: u64 = 195_600; ... and so on .... etc

"

echo "https://github.com/stacks-network/stacks-core/archive/refs/tags/2.5.0.0.3.tar.gz"

mkdir check-difference-stacks-node
cd check-difference-stacks-node
git clone https://github.com/bitnet-io/stacks-core-bitnet
cd stacks-core-bitnet
wget https://github.com/stacks-network/stacks-core/archive/refs/tags/2.5.0.0.3.tar.gz
tar -xvf 2.5.0.0.3.tar.gz

echo "stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_05/tests/assets.rs"
echo ""
echo ""
diff stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_05/tests/assets.rs  ./clarity/src/vm/analysis/type_checker/v2_05/tests/assets.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_05/tests/contracts.rs"
echo ""
echo ""
diff stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_05/tests/contracts.rs  ./clarity/src/vm/analysis/type_checker/v2_05/tests/contracts.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_1/tests/assets.rs"
echo ""
echo ""
diff stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_1/tests/assets.rs  ./clarity/src/vm/analysis/type_checker/v2_1/tests/assets.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_1/tests/contracts.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/clarity/src/vm/analysis/type_checker/v2_1/tests/contracts.rs  ./clarity/src/vm/analysis/type_checker/v2_1/tests/contracts.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/clarity/src/vm/tests/assets.rs"
echo ""
echo ""
diff stacks-core-2.5.0.0.3/clarity/src/vm/tests/assets.rs  ./clarity/src/vm/tests/assets.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/clarity/src/vm/tests/contracts.rs"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/clarity/src/vm/tests/contracts.rs  ./clarity/src/vm/tests/contracts.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/docs/rpc/api/core-node/get-pox.example.json "
echo ""
echo ""
diff stacks-core-2.5.0.0.3/docs/rpc/api/core-node/get-pox.example.json  ./docs/rpc/api/core-node/get-pox.example.json | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/sample-contracts/names.clar"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/sample-contracts/names.clar  ./sample-contracts/names.clar | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stacks-common/src/address/c32.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stacks-common/src/address/c32.rs  ./stacks-common/src/address/c32.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stacks-common/src/address/mod.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stacks-common/src/address/mod.rs  ./stacks-common/src/address/mod.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stacks-common/src/deps_common/bitcoin/blockdata/constants.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stacks-common/src/deps_common/bitcoin/blockdata/constants.rs  ./stacks-common/src/deps_common/bitcoin/blockdata/constants.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stacks-common/src/deps_common/bitcoin/network/constants.rs"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stacks-common/src/deps_common/bitcoin/network/constants.rs  ./stacks-common/src/deps_common/bitcoin/network/constants.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stacks-common/src/deps_common/bitcoin/network/message.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stacks-common/src/deps_common/bitcoin/network/message.rs  ./stacks-common/src/deps_common/bitcoin/network/message.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stacks-common/src/libcommon.rs"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stacks-common/src/libcommon.rs  ./stacks-common/src/libcommon.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/burnchains/affirmation.rs"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/burnchains/affirmation.rs  ./stackslib/src/burnchains/affirmation.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/burnchains/bitcoin/address.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/burnchains/bitcoin/address.rs  ./stackslib/src/burnchains/bitcoin/address.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/burnchains/bitcoin/indexer.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/burnchains/bitcoin/indexer.rs  ./stackslib/src/burnchains/bitcoin/indexer.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/burnchains/bitcoin/spv.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/burnchains/bitcoin/spv.rs  ./stackslib/src/burnchains/bitcoin/spv.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/burnchains/burnchain.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/burnchains/burnchain.rs  ./stackslib/src/burnchains/burnchain.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/chainstate/coordinator/mod.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/chainstate/coordinator/mod.rs  ./stackslib/src/chainstate/coordinator/mod.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/address.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/address.rs  ./stackslib/src/chainstate/stacks/address.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/boot/pox-4.clar "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/boot/pox-4.clar  ./stackslib/src/chainstate/stacks/boot/pox-4.clar | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/boot/pox-mainnet.clar "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/boot/pox-mainnet.clar  ./stackslib/src/chainstate/stacks/boot/pox-mainnet.clar | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/mod.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/chainstate/stacks/mod.rs  ./stackslib/src/chainstate/stacks/mod.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/clarity_cli.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/clarity_cli.rs  ./stackslib/src/clarity_cli.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/clarity_vm/tests/forking.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/clarity_vm/tests/forking.rs  ./stackslib/src/clarity_vm/tests/forking.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/clarity_vm/tests/large_contract.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/clarity_vm/tests/large_contract.rs  ./stackslib/src/clarity_vm/tests/large_contract.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/core/mempool.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/core/mempool.rs  ./stackslib/src/core/mempool.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/core/mod.rs MAJOR GUTS OF THE CODE SIMILAR TO CHAINPARAMS.CPP FOR STACKS-CORE-NODE "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/core/mod.rs  ./stackslib/src/core/mod.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/net/chat.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/net/chat.rs  ./stackslib/src/net/chat.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/net/download/epoch2x.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/net/download/epoch2x.rs  ./stackslib/src/net/download/epoch2x.rs | grep '>' 
echo ""
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/net/neighbors/db.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/net/neighbors/db.rs  ./stackslib/src/net/neighbors/db.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/net/neighbors/mod.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/net/neighbors/mod.rs  ./stackslib/src/net/neighbors/mod.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/net/p2p.rs "
echo ""
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/net/p2p.rs  ./stackslib/src/net/p2p.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stackslib/src/net/rpc.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stackslib/src/net/rpc.rs  ./stackslib/src/net/rpc.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stx-genesis/build.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stx-genesis/build.rs  ./stx-genesis/build.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stx-genesis/chainstate-test.txt "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stx-genesis/chainstate-test.txt  ./stx-genesis/chainstate-test.txt | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/stx-genesis/chainstate.txt "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stx-genesis/chainstate.txt  ./stx-genesis/chainstate.txt | grep '>' 
echo ""
echo ""
echo ""
echo " stacks-core-2.5.0.0.3/stx-genesis/src/lib.rs"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/stx-genesis/src/lib.rs  ./stx-genesis/src/lib.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/testnet/stacks-node/src/burnchains/bitcoin_regtest_controller.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/testnet/stacks-node/src/burnchains/bitcoin_regtest_controller.rs  ./testnet/stacks-node/src/burnchains/bitcoin_regtest_controller.rs | grep '>' 
echo ""
echo ""
echo ""
echo " stacks-core-2.5.0.0.3/testnet/stacks-node/src/run_loop/boot_nakamoto.rs"
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/testnet/stacks-node/src/run_loop/boot_nakamoto.rs  ./testnet/stacks-node/src/run_loop/boot_nakamoto.rs | grep '>' 
echo ""
echo ""
echo ""
echo "stacks-core-2.5.0.0.3/testnet/stacks-node/src/run_loop/neon.rs "
echo ""
echo ""
echo ""
diff stacks-core-2.5.0.0.3/testnet/stacks-node/src/run_loop/neon.rs  ./testnet/stacks-node/src/run_loop/neon.rs | grep '>' 
echo ""
echo "YOU DONT EDIT THE VALUES FOR pub const MAINNET_2_0_GENESIS_ROOT_HASH: &str =       <--- INSIDE OF stackslib/src/core/mod.rs UNTIL AFTER YOU COMPILE ONCE"
echo "THEN AFTER COMPILING THE FIRST TIME WITH NEW VALUES YOU ENTER THE NEW MISMATCH FOR CLARITY GENESIS TO COMPILE THE "SECOND TIME"
echo ""
echo "this messsage will repeat once more for the mentally bewildered"
sleep 2s

echo "AFTER EDITING THE ABOVE VALUES TO YOUR CUSTOM COIN CONFIG YOU RECOMPILE THE SOURCE TWICE TO COMPUTE THE NEW CLARITY GENESIS"
echo ""
echo ""
echo "cargo build --release"
echo "./stacks-node start --config Config.toml"
echo "after syncing root clarity genesis will fail copy the new expected clarity genesis hash into stackslib/src/core/mod.rs"
echo "then recompile the second time -twice... cargo build --release"
echo "delete the working_data_dir usually /mnt/hiro-systems folder to purge the old sync values and data values working_data_dir will rebuild at 0 index"
echo ""
echo ""
echo ""
echo "now hopefully your stacks-node binary will resync and be active 127.0.0.1:20443/v2/info"
