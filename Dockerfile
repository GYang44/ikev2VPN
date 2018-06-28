FROM alpine:latest

MAINTAINER GYang44

#update internal packages
RUN apk update
RUN apk upgrade 

#install strongswan
RUN apk --update add strongswan

RUN echo finished building docker
