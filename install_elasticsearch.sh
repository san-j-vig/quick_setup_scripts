#!/bin/bash
root_dir="/elasticsearch"
mkdir $root_dir || true
cd $root_dir
read -p "Please enter the elasticsearch version (example: 7.10.2)?: " version
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$version-linux-x86_64.tar.gz
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$version-linux-x86_64.tar.gz.sha512
shasum -a 512 -c elasticsearch-$version-linux-x86_64.tar.gz.sha512 
tar -xzf elasticsearch-$version-linux-x86_64.tar.gz

sudo groupadd elasticsearch &>> /dev/null
sudo useradd elasticsearch -g elasticsearch -s /bin/false &>> /dev/null
sudo chown -R elasticsearch $root_dir/elasticsearch-$version/

sudo bash -c "cat << EOF > $root_dir/start_es.sh
#/bin/bash
$root_dir/elasticsearch-$version/bin/elasticsearch
EOF"
sudo chown -R elasticsearch $root_dir/start_es.sh
sudo chmod +x $root_dir/start_es.sh

sudo bash -c "cat << EOF > /etc/systemd/system/elasticsearch.service
[Unit]
Description=Starting Elasticsearch Server

[Service]
User=elasticsearch
Group=elasticsearch
ExecStart=$root_dir/start_es.sh
LimitMEMLOCK=infinity
LimitNOFILE=65536
Restart=always

[Install]
WantedBy=multi-user.target
EOF"

sudo systemctl enable elasticsearch.service
sudo service elasticsearch start
sudo service elasticsearch status
