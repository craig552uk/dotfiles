#!/bin/bash
#
# Set up the environment with a series of scripts
#

# Relative paths
SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname $SCRIPT_PATH`

# Add apt repositories
$SCRIPT_DIR/install-apt-repositories.sh

# Install packages
$SCRIPT_DIR/install-packages.sh

# Install config files
$SCRIPT_DIR/install-config-files.sh

# Download YUICompressor
$SCRIPT_DIR/install-yuicompressor.sh

# Install Google Chrome
$SCRIPT_DIR/install-google-chrome.sh

# Install DropBox
$SCRIPT_DIR/install-dropbox.sh

# Install skype
$SCRIPT_DIR/install-skype.sh