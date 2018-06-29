#!/bin/bash
# this scrip is mean to be run in the docker container
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE 
