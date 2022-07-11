#!/bin/bash
read -p "Enter username: " username
sudo htpasswd /etc/nginx/htpasswd.users $username
