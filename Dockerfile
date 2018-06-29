FROM alpine:latest

MAINTAINER GYang44

#openports for ipsec
EXPOSE 500/udp
EXPOSE 4500/udp

#update internal packages
RUN apk update
RUN apk upgrade 

#install strongswan
RUN apk --update add strongswan

#install certificates
#COPY /etc/letsencrypt/archive/www.guojunyang.net/chain1.pem /etc/ipsec.d/certs/chain.pem
#COPY /etc/letsencrypt/live/www.guojunyang.net/fullchain.pem /etc/ipsec.d/cacerts/
#COPY /etc/letsencrypt/live/www.guojunyang.net/privkey.pem /etc/ipsec.d/private/
COPY ./strongSwanConfigure/ipsec.conf /etc/ipsec.conf
COPY ./strongSwanConfigure/ipsec.secrets /etc/ipsec.secrets

RUN echo finished building docker

