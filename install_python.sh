#!/bin/bash
sudo apt install python3-pip build-essential wget libpq-dev libsqlite3-dev libbz2-dev zlib1g-dev libgdbm-dev libnss3-dev libssl-dev libffi-dev python3-dev unixodbc libpcre3 libreadline-dev

# Install Python $PYTHON_VERSION
read -p "Python verion? (3.7.6): " PYTHON_VERSION
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
tar xzf Python-$PYTHON_VERSION.tgz
cd /Python-$PYTHON_VERSION
./configure --enable-optimizations
make install
