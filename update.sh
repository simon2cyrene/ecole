#!/bin/bash

cd /root/config/ecole
git pull
cp /root/config/ecole/policies.json /etc/firefox/policies/policies.json
cp /root/config/ecole/sources.list /etc/apt/sources.list
cp /root/config/ecole/update.sh /root/update.sh
chmod +x /root/update.sh
