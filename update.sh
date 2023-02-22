#!/bin/bash

cd /root/config/ecole
git pull
cp /root/config/ecole/update.sh /root/update.sh
chmod +x /root/update.sh
chmod +x /root/config/ecole/main.sh
bash +x /root/config/ecole/main.sh


