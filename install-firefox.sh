#!/bin/bash

URL="https://download.mozilla.org/?product=firefox-30.0-SSL&os=linux64&lang=en-GB"
TMP="/tmp/firefox-30.0.$$.tar.bz2"

# Uninstall iceweasel on debian
sudo apt-get remove --yes iceweasel

# Download installer
wget --output-document $TMP $URL

# Extract to /opt/
cd /opt && sudo tar -xvf $TMP

# Create application link
sudo ln -s /opt/firefox/firefox /usr/bin/firefox

# Clean up
rm -f $TMP