#!/bin/bash

sudo yum update -y 

# ----- install git -----
echo -e "\n ----- Installing git -----"
sudo yum install git
git --version

# ----- install openssh -----
echo -e "\n ----- Installing openssh -----"
sudo yum -y install openssh-server
# starting SSH server
sudo systemctl start sshd

# check sshd status
# sudo systemctl status sshd

# to stop sshd
# sudo systemctl stop sshd

# enable openssh service to start automatically after each system reboot
sudo systemctl enable sshd

# disable ssh after reboot
# sudo systemctl disable sshd

# open ssh config
# sudo vim /etc/ssh/sshd_config

# ----- Installing latest docker engine -----
echo -e "\n ----- Installing yum-utils-----"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#sudo yum-config-manager --enable docker-ce-nightly
#sudo yum-config-manager --enable docker-ce-test
#sudo yum-config-manager --disable docker-ce-nightly
echo -e "\n ----- Installing docker managed by systemctl -----"
sudo yum install docker-ce docker-ce-cli containerd.io
sudo docker --version

# ----- installing docker managed by systemctl -----
# echo -e "\n ----- Installing docker managed by systemctl -----"
# sudo yum update -y
# sudo yum -y install docker-io
# sudo yum -y install docker
# sudo systemctl start docker

# ----- installing docker ----
#echo -e "\n ----- Installing docker -----"
# sudo yum update -y
# sudo curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo docker --version


