#!/bin/bash

CONFDIR="/root/config/ecole"

# Configuration système
cp -r $CONFDIR/etc/firefox/policies /etc/firefox/
cp -r $CONFDIR/etc/opt/chrome/policies /etc/opt/chrome/
cp $CONFDIR/etc/apt/sources.list /etc/apt/sources.list
cp $CONFDIR/etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
cp $CONFDIR/etc/apt/apt.conf.d/20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades
flatpak update
flatpak uninstall --unused

# Configuration root
cp $CONFDIR/root/.bashrc /root/.bashrc
cp $CONFDIR/root/.ssh/authorized_keys /root/.ssh/authorized_keys
touch /root/testcron.txt

# Configuration élève
cp $CONFDIR/eleve/.local/share/user-places.xbel /home/eleve/.local/share/user-places.xbel
chown -R eleve:eleve /home/eleve
