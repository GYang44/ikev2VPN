#!/bin/bash
docker create --cap-add=NET_ADMIN --privileged -v /lib/modules:/lib/modules -p 4500:4500/udp -p 500:500/udp --name=vpn0 --restart=unless-stopped gyang44:VPN
docker start vpn0
