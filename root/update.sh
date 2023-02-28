#!/bin/bash

until [ "$(ping -q -c 4 8.8.8.8)" = "0" ]
	do
		sleep 1s
	done

cd /root/config/ecole
git pull
bash /root/config/ecole/main.sh


