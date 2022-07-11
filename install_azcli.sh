#!/bin/bash
sudo apt update && sudo apt install -y libssl-dev libffi-dev python3-dev build-essential && \
curl -L https://aka.ms/InstallAzureCli | bash
