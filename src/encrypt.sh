#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

pip3 install passlib >/dev/null 2>&1
echo "$1" > /tmp/password
cd /root/alfresco/src
python3 encryption.py > /dev/null
echo -e "Password: $1"
echo -e "Encrypted Password: $(cat /tmp/password)"
echo -e "\n"
