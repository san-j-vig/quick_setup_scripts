#!/bin/bash

### Openssl ###
# Generating .key file for CA
openssl genrsa -des3 -out ca.key 2048

# Generating .crt file of CA using .key
openssl req -x509 -new -nodes -key ca.key -sha256 -days 1825 -out ca.x509.crt

# Generating p12 file using .crt and .key file of CA
openssl pkcs12 -inkey ca.key -in ca.x509.crt -export -out ca.p12

### ES Certutil ###
# Generating CA p12 file
elasticsearch-certutil ca

# Generating client certificate files (.key and .crt) using CA
elasticsearch-certutil cert --ca ca.p12 --pem

# Generating client p12 certificate file using CA
elasticsearch-certutil cert --ca ca.p12

# Generating clien http certificate file using CA
elasticsearch-certutil http

### Openssl ###
# Extract .crt from p12
openssl pkcs12 -in ca.p12 -clcerts -nokeys -out ca.crt

# Generating pksc8 .key file
openssl pkcs8 -in filebeat.key -topk8 -out filebeat-pkcs8.key -nocrypt
