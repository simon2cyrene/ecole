#!/bin/bash

cd /root/config/ecole
git pull
cp -r /root/config/ecole/etc/firefox/policies /etc/firefox/
cp -r /root/config/ecole/etc/opt/chrome/policies /etc/opt/chrome/
#cp /root/config/ecole/etc/apt/sources.list /etc/apt/sources.list
cp /root/config/ecole/update.sh /root/update.sh
chmod +x /root/update.sh
