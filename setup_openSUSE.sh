#!/bin/bash

## install git
sudo zypper install --no-confirm git-core

## install openssh
sudo zypper refresh
sudo zypper install --no-confirm openssh
# start sshd service via systemcd
sudo systemctl start sshd
# check if sshd is successfully started
# sudo systemctl status sshd
# enable sshd during system startup
sudo systemctl enable sshd
# enable firewall rule for ssh
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --reload
