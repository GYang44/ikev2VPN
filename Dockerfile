FROM alpine:latest

MAINTAINER GYang44

#openports for ipsec
EXPOSE 500/udp
EXPOSE 4500/udp

#update internal packages
#install strongswan
RUN apk -U upgrade \
    && apk add -U --no-cache strongswan bash \
    && rm -rf /var/cache/apk/* \
    && rm -f /etc/ipsec.secrets

COPY ./scriptDocker/startVPN.sh /usr/bin/
#start the server
CMD /bin/bash /usr/bin/startVPN.sh

