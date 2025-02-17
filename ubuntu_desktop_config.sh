#!/usr/bin/env bash

echo -e "This script provides basic configuration on a fresh Ubuntu Desktop 24.04 installation. No root priviledges are needed."

# set natural scrolling for mouse and touchpad
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
