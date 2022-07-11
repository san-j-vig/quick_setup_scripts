#!/bin/bash
sudo apt install pkg-config libjemalloc1 libjemalloc-dev gcc make
wget http://download.redis.io/redis-stable.tar.gz
tar -xvzf redis-stable.tar.gz
cd redis-stable
make distclean
make
sudo cp src/redis-cli /usr/local/bin/
sudo chmod 755 /usr/local/bin/redis-cli
