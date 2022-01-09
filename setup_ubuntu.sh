#!/bin/bash

# ------ net-tools to run ifconfig cmd -----
echo -e "\n------ Installing net-tools -----"
sudo apt update
sudo apt install net-tools

# ------ install vim -----
echo -e "\n----- Installing vim -----"
sudo apt-get install -y vim

# ----- install git -----
echo -e "\n----- Installing git -----"
sudo apt install -y git-all
git --version

# ----- installing docker -----
echo -e "\n----- Installing docker -----"
sudo apt-get update
sudo apt-get install -y wget
sudo wget -qO- https://get.docker.com/ | sh
sudo docker --version
# stop, start, and restart service
#sudo service docker restart

# add the user account to the docker group:
# TODO: replace username with a argument
sudo gpasswd -a sadsyed docker
