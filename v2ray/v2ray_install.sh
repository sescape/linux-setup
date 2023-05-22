#!/bin/bash

# net-tools to run ifconfig cmd
echo -e "\n------ Installing net-tools -----"
sudo apt update
sudo apt install net-tools

# install vim 
echo -e "\n----- Installing vim -----"
sudo apt-get install -y vim

# update and upgrade
echo -e "\n----- update and upgrade -----"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get full-upgrade

# install curl
sudo apt-get install curl -y

# date
date -R

# install and generate uuid
sudo apt-get install uuid-runtime
uuidgen

# get v2ray script
curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh

# execute v2ray installation script
sudo bash install-release.sh
v2ray version

# edit v2ray.service to add VMESS env and reload and restart v2ray
systemctl daemon-reload
systemctl restart v2ray