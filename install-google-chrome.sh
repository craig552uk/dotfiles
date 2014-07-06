#!/bin/bash

URL="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
TMP="/tmp/google-chrome-stable_current_amd64.$$.deb"

# Download installer
wget --output-document $TMP $URL

# Install
sudo dpkg -i $TMP

# Clean up
rm -f $TMP