#!/bin/bash

#Creating docker volume for veriumminer
printf "\e[32mCreating docker volume for veriumminer\e[0m\n"
sudo chown $USER /var/lib/docker/ -R
mkdir -p /var/lib/docker/volumes/veriumminer_root_home/_data/.veriumminer/

printf "Creating scripts directory\n"
cd /var/lib/docker/volumes/veriumminer_root_home/_data/
mkdir scripts
cd scripts/

for filename in ~/git/pi_veriumminer/scripts/veriumminer/*; do
		printf "Copy to scripts folder: $filename\n"
		cp $filename ./
done

cd ~/