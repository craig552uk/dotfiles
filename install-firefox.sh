#!/bin/bash

URL="https://download.mozilla.org/?product=firefox-30.0-SSL&os=linux64&lang=en-GB"
TMP="/tmp/firefox-30.0.$$.tar.bz2"

# Download installer
wget --output-document $TMP $URL

# Extract to /opt/
cd /opt && sudo tar -xvf $TMP

# Clean up
rm -f $TMP