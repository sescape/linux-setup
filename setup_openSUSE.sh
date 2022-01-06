#!/bin/bash

## install git
sudo zypper install --no-confirm git-core
# to setup github with ssh key
# ssh-keygen -t ed25519 -C "<email>"
# cat ~/.ssh/id_ed25519.pub
# log into github account -> settings -> add SSH key and paste the contents from above cmd
# set your remote URL to a form that supports SSH
# git remote set-url origin git+ssh://git@github.com:/<username>/<reponame>.git
# git remote show origin

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
