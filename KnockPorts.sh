#!/bin/bash

source mylib.sh
echo "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" > /etc/environment
echo ":PORT_ONE='$PORTO'" >> /etc/environment
echo ":PORT_TWO='$PORTT'" >> /etc/environment
echo ":PORT_THREE='$PORTH'" >> /etc/environment
echo ":PASCLEPIUS='$PS'" >> /etc/environment
echo ":IP='$IP_VAL'" >> /etc/environment
cp Sessions.sh /var/www/html/
cp /etc/knockd.conf $HOME/CHARON/knockd.conf
