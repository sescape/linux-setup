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
