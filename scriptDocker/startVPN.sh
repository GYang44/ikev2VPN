#!/bin/bash
# this scrip is mean to be run in the docker
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE 

#hot fix 
rm -f /var/run/starter.charon.pid

#start ipsec
/usr/sbin/ipsec start --nofork
