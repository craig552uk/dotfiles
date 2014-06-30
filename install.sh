#!/bin/bash

# Relative paths
SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname $SCRIPT_PATH`

# Add package repos
sudo add-apt-repository --yes ppa:webupd8team/sublime-text-2
sudo add-apt-repository --yes ppa:gnome-terminator
sudo apt-get update

# Install packages
sudo apt-get install --yes curl
sudo apt-get install --yes git-core
sudo apt-get install --yes vim
sudo apt-get install --yes sublime-text
sudo apt-get install --yes terminator
sudo apt-get install --yes conky
sudo apt-get install --yes python-dev python-pip python-virtualenv
sudo apt-get install --yes inkscape
sudo apt-get install --yes gimp
sudo apt-get install --yes firefox
sudo apt-get install --yes openjdk-6

echo "Creating Symlinks to configs ..."

# Creating symlinks to dotfiles
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/conkyrc $HOME/.conkyrc
ln --force --symbolic --verbose $SCRIPT_DIR/vimrc $HOME/.vimrc
ln --force --symbolic --verbose $SCRIPT_DIR/irbrc $HOME/.irbrc
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc

# Creating symlinks to application configs
ln --force --symbolic --verbose $SCRIPT_DIR/terminator_config $HOME/.config/terminator/config
ln --force --symbolic --verbose $SCRIPT_DIR/inkscape_default.svg $HOME/.config/inkscape/templates/default.svg

# Creating symlinks to directories
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/bin $HOME/bin
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/fonts $HOME/.fonts
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/icons $HOME/.icons

# Download YUICompressor
mkdir $HOME/.yuicompressor
YUI_IN="https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar"
YUI_OUT="$HOME/.yuicompressor/yuicompressor-latest.jar"
wget --output-document $YUI_OUT $YUI_IN

# Non PPA packages
echo "The following packages must be manually installed"
echo "Google Chrome: https://www.google.com/intl/en/chrome/browser/"
echo "Skype: http://www.skype.com/en/download-skype/skype-for-linux/"
echo "Dropbox: https://www.dropbox.com/install?os=lnx"
