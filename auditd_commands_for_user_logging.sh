#!/bin/bash
sudo sed -i -e "s/^-a exit,always -F arch=b32 -F euid=0 -S execve -k rootcmd/-a exit,always -F arch=b32 -S execve -k user_command_log/" /etc/audit/rules.d/audit.rules
sudo sed -i -e "s/^-a exit,always -F arch=b64 -F euid=0 -S execve -k rootcmd/-a exit,always -F arch=b64 -S execve -k user_command_log/" /etc/audit/rules.d/audit.rules
sudo service auditd reload
sudo service auditd restart
