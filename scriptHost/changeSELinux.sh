#!/bin/bash

#this meant to be run from the directory from Dockerfile
echo --- changing SElinux context ---
chcon -R -t svirt_sandbox_file_t ./certs
chcon -R -t svirt_sandbox_file_t ./strongSwanConfigure
echo --- finish moving certs for $DOMAIN ---
