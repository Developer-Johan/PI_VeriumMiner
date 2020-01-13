#!/bin/bash

cd ~
clear

#Install git
printf "\e[32mInstall git\e[0m\n"
sudo apt -y install git

#Clone from git
printf "\e[32mClone from git\e[0m\n"

if 
	cd ~/git/pi_veriumminer/; 
	then 
		git reset;
		git reset --hard
		git pull; 
	else 
		git clone -v https://github.com/Developer-Johan/pi_veriumminer.git ~/git/pi_veriumminer/
fi

#Give all scripts righs
sudo find ~/git/pi_veriumminer/ -name '*.sh' -print0 | xargs -0 sudo chmod +x

#run scripts for pi_veriumminer
cd ~/git/pi_veriumminer/scripts/pi/

#Run update
./update.sh

#Run installeprogramms
./installeprogramms.sh

#Runinstalldocker
./installdocker.sh

#Run setupdockerveriumminervolume
./setupdockerveriumminervolume.sh

#Run createdockerfiles
./createdockerfiles.sh

#Run docker veriumminer
echo "\e[32mRun docker veriumminer\e[0m"
sudo docker run -d --restart=always --mount source=veriumminer_root_home,target=/root --cpu-shares=128 --name veriumminer  veriumminer /root/scripts/startup.sh