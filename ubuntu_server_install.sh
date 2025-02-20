#!/usr/bin/env bash

set -e
echo -e "This script provides basic setup and configuration on a fresh Ubuntu Server 24.04 installation."

# update the package list
sudo apt update

# upgrade the installed packages
sudo apt upgrade -y

# install basic packages
sudo apt install -y vim wget gpg net-tools ca-certificates curl software-properties-common tree

# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}


# install and configure ufw
sudo apt install ufw
sudo ufw allow OpenSSH
sudo ufw enable

TO-DO:
# install home assistant OS to allow add-ons
# configure DDNS
# install WireGard
# install adblock
# install audio server
