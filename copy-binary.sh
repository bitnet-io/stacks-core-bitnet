rm -rf stacks-bitnet-nakamoto-binary-deb10
mkdir stacks-bitnet-nakamoto-binary-deb10
rm -rf ./stacks-bitnet-nakamoto-binary-deb10/*
rm -rf stacks-bitnet-nakamoto-binary-deb10.tar
rm -rf stacks-bitnet-nakamoto-binary-deb10.tar.gz
 cp -rf target/release/stacks-events stacks-bitnet-nakamoto-binary-deb10/
 cp -rf target/release/stacks-signer stacks-bitnet-nakamoto-binary-deb10/
 cp -rf target/release/stacks-node stacks-bitnet-nakamoto-binary-deb10/
 cp -rf target/release/relay-server stacks-bitnet-nakamoto-binary-deb10/
 cp -rf target/release/clarity-cli stacks-bitnet-nakamoto-binary-deb10/
 cp -rf target/release/blockstack-cli stacks-bitnet-nakamoto-binary-deb10/
 cp -rf target/release/stacks-inspect stacks-bitnet-nakamoto-binary-deb10/
strip stacks-bitnet-nakamoto-binary-deb10/*
tar -cf stacks-bitnet-nakamoto-binary-deb10.tar stacks-bitnet-nakamoto-binary-deb10
gzip stacks-bitnet-nakamoto-binary-deb10.tar
