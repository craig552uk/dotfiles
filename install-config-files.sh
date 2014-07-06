#!/bin/bash

# Relative paths
SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname $SCRIPT_PATH`

# Creating symlinks to dotfiles
ln --force --symbolic --verbose $SCRIPT_DIR/config/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/config/conkyrc $HOME/.conkyrc
ln --force --symbolic --verbose $SCRIPT_DIR/config/vimrc $HOME/.vimrc
ln --force --symbolic --verbose $SCRIPT_DIR/config/irbrc $HOME/.irbrc
ln --force --symbolic --verbose $SCRIPT_DIR/config/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/config/i3status.conf $HOME/.i3status.conf
ln --force --symbolic --verbose $SCRIPT_DIR/config/gtkrc-2.0 $HOME/.gtkrc-2.0

# Creating symlinks to application configs
mkdir --parents $HOME/.config/terminator
ln --force --symbolic --verbose $SCRIPT_DIR/config/terminator_config $HOME/.config/terminator/config
mkdir --parents $HOME/.i3
ln --force --symbolic --verbose $SCRIPT_DIR/config/i3wm.conf $HOME/.i3/config

# Symlink default templates
mkdir --parents $HOME/.config/inkscape/templates
ln --force --symbolic --verbose $SCRIPT_DIR/templates/inkscape_default.svg $HOME/.config/inkscape/templates/default.svg

# Creating symlinks to directories
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/bin $HOME/bin
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/fonts $HOME/.fonts
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/icons $HOME/.icons
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/help $HOME/.help