#!/bin/bash

sudo wget https://nginx.org/keys/nginx_signing.key -P /tmp
sudo apt-key add /tmp/nginx_signing.key
sudo rm /tmp/nginx_signing.key

sudo bash -c "cat << EOF > /etc/apt/sources.list.d/nginx.list
deb https://nginx.org/packages/ubuntu/ $(lsb_release -cs) nginx
deb-src https://nginx.org/packages/ubuntu/ $(lsb_release -cs) nginx
EOF"

sudo apt update
sudo apt install nginx -y
