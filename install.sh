#!/bin/bash

# Relative paths
SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname $SCRIPT_PATH`

echo "Creating symlinks to dotfiles"
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc
ln --force --symbolic --verbose $SCRIPT_DIR/conkyrc $HOME/.conkyrc
ln --force --symbolic --verbose $SCRIPT_DIR/vimrc $HOME/.vimrc
ln --force --symbolic --verbose $SCRIPT_DIR/irbrc $HOME/.irbrc
ln --force --symbolic --verbose $SCRIPT_DIR/terminator_config $HOME/.config/terminator/config
ln --force --symbolic --verbose $SCRIPT_DIR/bashrc $HOME/.bashrc