#!/bin/bash
curl -sSL https://get.docker.com/ | sh; \
sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose; \
sudo usermod -aG docker $USER; \
sudo chmod 755 /usr/local/bin/docker-compose;
