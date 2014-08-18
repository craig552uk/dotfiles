#!/bin/bash

# Debian version
DEBIAN="wheezy"

# Add i386 architecture to installer
# Needed for some packages (skype)
sudo dpkg --add-architecture i386

# Add package repos and update
sudo add-apt-repository --yes "deb http://ftp.uk.debian.org/debian/ $DEBIAN main contrib non-free"
sudo add-apt-repository --yes "deb http://ftp.uk.debian.org/debian/ $DEBIAN-updates main contrib non-free"
sudo add-apt-repository --yes "deb http://http.debian.net/debian/ $DEBIAN-backports main contrib non-free"
sudo add-apt-repository --yes "deb http://ppa.launchpad.net/webupd8team/sublime-text-2/ubuntu trusty main"
sudo add-apt-repository --yes "deb http://deb.torproject.org/torproject.org $DEBIAN main"

# Fetch tor keys
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

# Update package list
sudo apt-get update