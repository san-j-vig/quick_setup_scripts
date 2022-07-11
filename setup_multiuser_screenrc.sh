#!/bin/bash

echo "multiuser on" >> /etc/screenrc && \
echo "acladd ubuntu" >> /etc/screenrc && \
echo "autodetach on" >> /etc/screenrc && \
echo "startup_message off" >> /etc/screenrc && \
echo "hardstatus alwayslastline" >> /etc/screenrc && \
echo "shelltitle 'bash'" >> /etc/screenrc && \
echo "hardstatus string '%{gk}[%{wk}%?%-Lw%?%{=b kR}(%{W}%n*%f %t%?(%u)%?%{=b kR})%{= w}%?%+Lw%?%? %{g}][%{d}%l%{g}][ %{= w}%Y/%m/%d %0C:%s%a%{g} ]%{W}'" >> /etc/screenrc && \
chmod u+s /usr/bin/screen && \
chmod 755 /var/run/screen
