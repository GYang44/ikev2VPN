#!/bin/bash
docker create --cap-add=NET_ADMIN --privileged -v /lib/modules:/lib/modules -v $(pwd)/strongSwanConfigure/ipsec.conf:/etc/ipsec.conf:ro -v $(pwd)/strongSwanConfigure/ipsec.secrets:/etc/ipsec.secrets:ro -v $(pwd)/certs/chain.pem:/etc/ipsec.d/cacerts/chain.pem:ro -v $(pwd)/certs/fullchain.pem:/etc/ipsec.d/certs/fullchain.pem:ro -v $(pwd)/certs/privkey.pem:/etc/ipsec.d/private/privkey.pem:ro -p 4500:4500/udp -p 500:500/udp --name=vpn0 --restart=unless-stopped gyang44:VPN
docker start vpn0
