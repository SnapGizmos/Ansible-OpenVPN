#!/bin/bash
cd /etc/openvpn/easy-rsa/
source ./vars
# ./clean-all
## change nopass to a password if wanted for CA cert
./build-ca --batch nopass
## VPNServer is key for OpenVPN server
## defined in /etc/openvpn/server/server.conf
./build-key-server --batch VPNserver
## build  DH 
./build-dh
## client name doubles as Common Name for cert
./build-key client-name
