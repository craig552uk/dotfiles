#!/bin/bash

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

# Messages
echo "--------------------------------------------------------------"
echo "The following packages must be manually installed"
echo "Google Chrome: https://www.google.com/intl/en/chrome/browser/"
echo "Skype: http://www.skype.com/en/download-skype/skype-for-linux/"
echo "Dropbox: https://www.dropbox.com/install?os=lnx"
