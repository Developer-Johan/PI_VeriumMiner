#!/bin/bash

#Creating docker file directory
printf "\e[32mCreating docker file directory\e[0m\n"
printf "\e[33mCurrent path is: '`pwd`'\e[0m\n"
cd ~/
mkdir -p ~/dockerfiles

#Creating veriumminer Docker File
printf "\e[32mCreating veriumminer docker file\e[0m\n"
printf "\e[33mCurrent path is: '`pwd`'\e[0m\n"
cd ~/dockerfiles/
mkdir -p veriumminerdockerfile
cp -n ~/git/pi_veriumminer/dockerfiles/veriumminer/dockerfile ~/dockerfiles/veriumminerdockerfile/

sudo docker build -t veriumminer ./veriumminerdockerfile/
