#!/bin/bash
sudo mkdir -p /etc/systemd/system/docker.service.d &> /dev/null
sudo bash -c 'cat << EOF > /etc/systemd/system/docker.service.d/http-proxy.conf
[Service]
Environment="HTTP_PROXY=http://localhost:3128"
Environment="HTTPS_PROXY=http://localhost:3128"

EOF'

sudo systemctl daemon-reload
sudo service docker restart
