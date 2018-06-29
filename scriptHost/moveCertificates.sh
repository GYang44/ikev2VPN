#!/bin/bash

#this meant to be run from the directory from Dockerfile
DOMAIN='www.guojunyang.net'
echo --- moving for $DOMAIN ---
cp /etc/letsencrypt/live/$DOMAIN/chain.pem ./certs/
cp /etc/letsencrypt/live/$DOMAIN/fullchain.pem ./certs/
cp /etc/letsencrypt/live/$DOMAIN/privkey.pem ./certs/
chown gyang:gyang ./certs/*
echo --- finish moving certs for $DOMAIN ---
