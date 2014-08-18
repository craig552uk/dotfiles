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

# Install Firefox
$SCRIPT_DIR/install-firefox.sh

# Install Thunderbird email client
$SCRIPT_DIR/install-thunderbird.sh

# Install skype
$SCRIPT_DIR/install-skype.sh

# Install Google App Engine SDK
$SCRIPT_DIR/install-google-ap-engine.sh

# Install Ruby
$SCRIPT_DIR/install-ruby.sh
