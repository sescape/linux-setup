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
sudo apt update
sudo apt upgrade
sudo apt full-upgrade

# install curl
sudo apt install curl -y

# install jq, lsof, nginx
sudo apt install jq -y
sudo apt install lsof -y
sudo apt install nginx -y
sudo apt install snapd -y
sudo snap install core
sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

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

# edit v2ray.service to add VMESS env 

# get v2ray server config
wget https://raw.githubusercontent.com/sescape/linux-setup/main/v2ray/v2ray_server_config.json
cp v2ray_server_config.json /usr/local/etc/v2ray/config.json

# reload and restart v2ray
systemctl daemon-reload
systemctl restart v2ray