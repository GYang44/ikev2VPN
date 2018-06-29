#!/bin/bash

#this scrip meant to be run from the dicrectoy of dockerfile
DOMAIN='www.guojunyang.net'
echo --- removing for $DOMAIN ---
rm ./certs/chain.pem
rm ./certs/fullchain.pem
rm ./certs/privkey.pem
echo --- finish removing certs for $DOMAIN ---
