#!/bin/bash

apt-get update -y
ufw disable
apt-get install iptables iptables-persistent
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j REJECT
netfilter-persistent save
netfilter-persistent reload
apt-get install knockd -y
cp -f /etc/default/knockd /$HOME/$USER/knockd
sudo apt-get install apache2
sudo ufw allow http
sudo ufw enable
sudo ufw allow 65355


