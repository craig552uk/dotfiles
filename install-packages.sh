#!/bin/bash

# Install packages
sudo apt-get install --yes curl
sudo apt-get install --yes git
sudo apt-get install --yes dmenu
sudo apt-get install --yes vim
sudo apt-get install --yes sublime-text
sudo apt-get install --yes terminator
sudo apt-get install --yes conky
sudo apt-get install --yes python-dev python-pip python-virtualenv
sudo apt-get install --yes inkscape
sudo apt-get install --yes gimp
sudo apt-get install --yes firefox
sudo apt-get install --yes openjdk-6-jre
sudo apt-get install --yes gpg
sudo apt-get install --yes nginx
sudo apt-get install --yes flashplugin-nonfree
sudo apt-get install --yes unzip
sudo apt-get install --yes numlockx

# Install packages explicitly from backports
sudo apt-get --target-release wheezy-backports install --yes i3