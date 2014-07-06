#!/bin/bash

# Relative paths
SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname $SCRIPT_PATH`

# Creating symlinks to dotfiles
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/conkyrc $HOME/.conkyrc
ln --force --symbolic --verbose $SCRIPT_DIR/vimrc $HOME/.vimrc
ln --force --symbolic --verbose $SCRIPT_DIR/irbrc $HOME/.irbrc
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/i3status.conf $HOME/.i3status.conf

# Creating symlinks to application configs
mkdir --parents $HOME/.config/terminator
ln --force --symbolic --verbose $SCRIPT_DIR/terminator_config $HOME/.config/terminator/config
mkdir --parents $HOME/.config/inkscape/templates
ln --force --symbolic --verbose $SCRIPT_DIR/inkscape_default.svg $HOME/.config/inkscape/templates/default.svg
mkdir --parents $HOME/.i3
ln --force --symbolic --verbose $SCRIPT_DIR/i3wm.conf $HOME/.i3/config

# Creating symlinks to directories
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/bin $HOME/bin
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/fonts $HOME/.fonts
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/icons $HOME/.icons
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/help $HOME/.help