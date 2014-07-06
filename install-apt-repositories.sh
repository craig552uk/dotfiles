#!/bin/bash

# Debian version
DEBIAN="wheezy"

# Add package repos and update
sudo add-apt-repository --yes "deb http://ftp.uk.debian.org/debian/ $DEBIAN main contrib non-free"
sudo add-apt-repository --yes "deb http://ftp.uk.debian.org/debian/ $DEBIAN-updates main contrib non-free"
sudo add-apt-repository --yes "deb http://http.debian.net/debian/ $DEBIAN-backports main contrib non-free"
sudo add-apt-repository --yes "deb http://ppa.launchpad.net/webupd8team/sublime-text-2/ubuntu trusty main"
sudo add-apt-repository --yes "deb http://ppa.launchpad.net/gnome-terminator/ppa/ubuntu saucy main"
sudo apt-get update