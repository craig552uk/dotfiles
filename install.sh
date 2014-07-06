#!/bin/bash

# Relative paths
SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname $SCRIPT_PATH`

# Add package repos and update
sudo add-apt-repository --yes "deb http://http.debian.net/debian wheezy-backports main"
sudo add-apt-repository --yes "deb http://ppa.launchpad.net/webupd8team/sublime-text-2/ubuntu trusty main"
sudo add-apt-repository --yes "deb http://ppa.launchpad.net/gnome-terminator/ppa/ubuntu saucy main"
sudo apt-get update

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

# Install backports packages
sudo apt-get --target-release wheezy-backports install --yes i3

echo "Creating Symlinks to configs ..."

# Creating symlinks to dotfiles
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/conkyrc $HOME/.conkyrc
ln --force --symbolic --verbose $SCRIPT_DIR/vimrc $HOME/.vimrc
ln --force --symbolic --verbose $SCRIPT_DIR/irbrc $HOME/.irbrc
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc

# Creating symlinks to application configs
mkdir --parents $HOME/.config/terminator
ln --force --symbolic --verbose $SCRIPT_DIR/terminator_config $HOME/.config/terminator/config
mkdir --parents $HOME/.config/inkscape/templates
ln --force --symbolic --verbose $SCRIPT_DIR/inkscape_default.svg $HOME/.config/inkscape/templates/default.svg

# Creating symlinks to directories
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/bin $HOME/bin
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/fonts $HOME/.fonts
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/icons $HOME/.icons
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/help $HOME/.help

# Download YUICompressor
mkdir --parents $HOME/.yuicompressor
YUI_IN="https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar"
YUI_OUT="$HOME/.yuicompressor/yuicompressor-latest.jar"
wget --output-document $YUI_OUT $YUI_IN

# Non PPA packages
echo "The following packages must be manually installed"
echo "Google Chrome: https://www.google.com/intl/en/chrome/browser/"
echo "Skype: http://www.skype.com/en/download-skype/skype-for-linux/"
echo "Dropbox: https://www.dropbox.com/install?os=lnx"
