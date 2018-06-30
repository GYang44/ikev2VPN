#!/bin/bash
docker run --cap-add=NET_ADMIN --privileged -v /lib/modules:/lib/modules -p 4500:4500/udp -p 500:500/udp -it --rm gyang44:VPN
