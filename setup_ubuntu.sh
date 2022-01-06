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
