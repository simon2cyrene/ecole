#!/bin/bash

cp -r /root/config/ecole/etc/firefox/policies /etc/firefox/
cp -r /root/config/ecole/etc/opt/chrome/policies /etc/opt/chrome/
cp /root/config/ecole/etc/apt/sources.list /etc/apt/sources.list
cp -r /root/config/ecole/etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
