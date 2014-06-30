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

# Creating symlinks to application configs
ln --force --symbolic --verbose $SCRIPT_DIR/terminator_config $HOME/.config/terminator/config
ln --force --symbolic --verbose $SCRIPT_DIR/inkscape_default.svg $HOME/.config/inkscape/templates/default.svg

# Creating symlinks to directories
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/bin $HOME/bin
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/fonts $HOME/.fonts
ln --force --symbolic --verbose --no-target-directory $SCRIPT_DIR/icons $HOME/.icons

