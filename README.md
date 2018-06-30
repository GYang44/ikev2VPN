# ikev2VPN 

## Overview 
This is the project automate the process of creating, configuring and deploying ikev2 vpn service on linux operating systems using [docker](https://docs.docker.com/get-started/).

## How to Use

### 1. Prerequisites
- Linunx operating system
- SSL Certificate signed by trused authorities (to use self sined ca please refer this [project](https://github.com/aliasmee/alpine-ikev2-vpn))
- Docker

### 2. Prepare files
- Clone this repo to your local file system
- Change directory to **ikev2VPN**
- CA certificates
    - Copy ca, chain and private-key files into **strongSwanConfigure**.
    - If you get your certificates using letsencrypt, you can simply run bash scrip provide:
        ```
        sudo bash scriptHost/moveCertificates.sh
        ```
        you will have to change domain name to accomadate your server(computer, VPS).
    - Change value of **leftid** to your domain name in **ipsec.conf**

- Create a file to store Secret key for each user, replace 'username' and 'password' with your choice.
    ```
    # This is private key located at /etc/ipsec.d/private/piratekey.pem
    : RSA privkey.pem
    
    username : EAP "password"
    ```

### 3. Testrun
- To build your docker image, simply run **scriptHost/buildDocker.sh**. During building process, docker will copy your ca files and secretkey files in to docker image. Make sure they are right places.
- Give it spin! Test run container will be destroyed upon exit.
    ```
    sudo bash scriptHost/testRun.sh
    ```
- Allow udp through port 4500 and 500 on your server.

### 4. Deploy and Run
- Deploy run will restart automatically, unless you explicitly stop it.
    ```
    sudo bash scriptHost/deployRun.sh
    ```
- Allow udp through port 4500 and 500 on your server.

## Known Issue
- May not work on your windows 10 machine, with recent(as of 2018) windows 10 update, this **ipesc.conf** no longer work with windows. "policy match error" will be raised upon connection.

## TODO
- Create an Docker that can be initialized differently with different hosts.
- Compatible with most recent version of windows
- Allow ios login using configuration file.

## Acknowledgments
This project won't be possible without insperation from following projects:
- https://github.com/aliasmee/alpine-ikev2-vpn
- https://github.com/Nebukad93/ikev2-vpn-server

# License
[MIT License Copyright (c) 2018 Guojun Yang](./LICENSE)
