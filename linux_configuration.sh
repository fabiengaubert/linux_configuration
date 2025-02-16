#!/usr/bin/env bash

clear
echo -e "This script provides basic setup and configuration on a fresh Linux installation."

# update the package list
sudo apt update

# upgrade the installed packages
sudo apt upgrade -y

# install basic packages
sudo apt install -y vim git wget gpg apt-transport-https

# install VSCode following official instructions
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt update
sudo apt install -y code
