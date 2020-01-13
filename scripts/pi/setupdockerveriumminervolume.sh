#!/bin/bash

#Creating docker volume for veriumminer

printf "Creating scripts directory\n"
cd /var/lib/docker/volumes/veriumminerd_root_home/_data/
mkdir scripts
cd scripts/

for filename in ~/git/pi_veriumminer/scripts/veriumminer/*; do
		printf "Copy to scripts folder: $filename\n"
		cp $filename ./
done

cd ~/