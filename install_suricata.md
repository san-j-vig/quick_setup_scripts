# From source
https://www.atlantic.net/vps-hosting/how-to-install-and-setup-suricata-ids-on-ubuntu-20-04/

# From ubuntu binary (recommended)
```bash
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt update
sudo apt install suricata jq
sudo suricata --build-info
sudo apt-get install python-yaml
sudo suricata-update
sudo systemctl enable suricata
sudo systemctl restart suricata
sudo systemctl status suricata
```

## Change to NFQ mode in /etc/default/suricata
```bash
sudo iptables -I INPUT -j NFQUEUE
sudo iptables -I OUTPUT -j NFQUEUE
```

# Instaling scirius
```bash
sudo apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev
git clone https://github.com/StamusNetworks/scirius.git
cd scirius
pip3 install -r requirements.txt
pip3 install pyinotify gitdb
```