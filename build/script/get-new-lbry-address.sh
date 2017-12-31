#!/bin/bash
cd /lbry
LBRY_ADDRESS=`./lbrynet-cli wallet_new_address`
LBRY_PUB_KEY=`./lbrynet-cli wallet_public_key ${LBRY_ADDRESS}`
echo "Your new address is:"
echo $LBRY_ADDRESS
echo "The public key for the address is:"
echo $LBRY_PUB_KEY