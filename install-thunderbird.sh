#!/bin/bash

URL="http://download.cdn.mozilla.net/pub/mozilla.org/thunderbird/releases/24.6.0/linux-x86_64/en-GB/thunderbird-24.6.0.tar.bz2"
TMP="/tmp/thunderbird.$$.tar.bz2"

# Download installer
wget --output-document $TMP $URL

# Extract to /opt/
cd /opt && sudo tar -xvf $TMP

# Create application link
sudo ln -s /opt/thunderbird/thunderbird /usr/bin/thunderbird

# Clean up
rm -f $TMP