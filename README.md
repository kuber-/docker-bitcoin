# Brief
In default mode, it only run 1 server node. Pls look at the Makefile for additional configurations.

# Build image
`docker build -t oceans_bitcoin .`

**Required turning off any anti-virus that may be running**

# Running image 
`docker run --rm --name=oceans_bitcoin -dit -p 19001:19001 -p 19011:19011 oceans_bitcoin`

# Log in to the container
`docker exec -u 0 -it oceans_bitcoin bash`

# todo

* fix the following error logged in ~/bitcoin/1/regtest/debug.log

*Config options rpcuser and rpcpassword will soon be deprecated. Locally-run instances may remove rpcuser to use cookie-based auth, or may be replaced with rpcauth. Please see share/rpcuser for rpcauth auth generation.*


# References

## RPC API references
https://bitcoin.org/en/developer-reference#remote-procedure-calls-rpcs
https://bitcoin.org/en/developer-examples#testnet

## Bitcoin conf references
https://github.com/MrChrisJ/fullnode/blob/master/Setup_Guides/bitcoin.conf
https://roll.urown.net/server/bitcoin/bitcoin-full-node.html
https://github.com/bitcoin/bitcoin/blob/master/contrib/debian/examples/bitcoin.conf

## Generating certificate and primary key
https://devcenter.heroku.com/articles/ssl-certificate-self