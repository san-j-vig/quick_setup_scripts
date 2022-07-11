#!/bin/bash
curl -s https://raw.githubusercontent.com/jhuckaby/Cronicle/master/bin/install.js | node
cp /opt/cronicle/bin/cronicled.init /etc/init.d/cronicled && \
chmod 775 /etc/init.d/cronicled && \
update-rc.d cronicled defaults
