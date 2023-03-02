#!/bin/bash

CONFDIR="/opt/config/ecole"

if [ -d "$CONFDIR" ]
	then
		cd $CONFDIR ;
		git pull ;
	else
		mkdir /opt/config ;
		cd /opt/config ;
		git clone https://github.com/simon2cyrene/ecole.git ;
fi


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
sudo -u eleve cp $CONFDIR/eleve/.local/share/user-places.xbel /home/eleve/.local/share/user-places.xbel
sudo -u eleve cp $CONFDIR/eleve/Desktop/*.desktop /home/eleve/Desktop/
chown -R eleve:eleve /home/eleve
