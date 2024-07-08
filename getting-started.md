# Sepolia Erigon (Execution Client with Embedded Caplin Consensus Client)

Welcome to the Sepolia Testnet Erigon Execution Layer Client with Embedded Light Consensus Layer Client, Caplin.

There are now two RPC APIs in Most Execution Clients, however in Erigon with Embedded Light Consensus Client Caplin, there is no need for an engine to authenticate an external beacon chain client, so only the Querying API can be used:

1. Querying API `http://sepolia-erigon.dappnode:8545`. Use this endpoint to query transactions on your node and connect to it with your web3 wallet.

This package is currently designed to work only as a standalone Sepolia Testnet Client without using an external Consensus Layer Client, Validator, or Signer.
Sepolia is a permissioned testnet and validators in this network are currently devloper controlled and the public cannot just run testnet Sepolia validators as they can on Göerli/Prater.
Currently Erigon's internal CL Caplin is not fully stable for all functions; in particular it has not finished deployment of the full Beacon API and is not capable of validating, on any network yet.
As new features are added upstream this client will be updated to allow for:
    - Using external Sepolia Consensus Layer Clients (currently we only have Prysm Sepolia Published and it's hardcoded to only work with Sepolia Geth, the only Sepolia Execution Layer Client we have had published until now)
    - Integrating the Full Caplin Beacon API when it is stable
    - Integrating Caplin Archive Mode when stable
    - Adding other new additional features on the Erigon Development Roadmap as they are released.
