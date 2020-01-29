#!/bin/bash

source mylib.sh
sudo apt-get install knockd iptables-persistent
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j REJECT
sudo systemctl start netfilter-persistent
sudo netfilter-persistent save
sudo netfilter-persistent reload
sudo systemctl start knockd
sudo knock $IP_VAL $PORTO $PORTT $PORTT -d 500
sleep 5
ssh robert@$IP_VAL
