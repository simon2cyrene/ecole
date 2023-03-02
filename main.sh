#!/bin/bash

CONFDIR="/root/config/ecole"

# Configuration système
cp -r $CONFDIR/etc/firefox/policies /etc/firefox/
cp -r $CONFDIR/etc/opt/chrome/policies /etc/opt/chrome/
cp $CONFDIR/etc/apt/sources.list /etc/apt/sources.list
cp $CONFDIR/etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d/50unattended-upgrades
cp $CONFDIR/etc/apt/apt.conf.d/20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades
cp $CONFDIR/etc/environment.d/10custom.conf /etc/environment.d/10custom.conf
flatpak update -y
flatpak uninstall --unused -y

# Configuration root
cp $CONFDIR/root/.bashrc /root/.bashrc
cp $CONFDIR/root/.ssh/authorized_keys /root/.ssh/authorized_keys

# Configuration élève
cp $CONFDIR/eleve/.local/share/user-places.xbel /home/eleve/.local/share/user-places.xbel
cp $CONFDIR/eleve/.local/share/plasma_icons/* /home/eleve/.local/share/plasma_icons/
cp $CONFDIR/eleve/.config/plasma-org.kde.plasma.desktop-appletsrc /home/eleve/.config/plasma-org.kde.plasma.desktop-appletsrc
chown -R eleve:eleve /home/eleve
