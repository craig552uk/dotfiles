#!/bin/bash
VER="1.9.6"
URL="https://storage.googleapis.com/appengine-sdks/featured/google_appengine_$VER.zip"
TMP="/tmp/google-app-engine.$$.zip"

# Download SDK
wget --output-document $TMP $URL

# Extract to home
cd ~ && unzip $TMP

# Rename
mv ~/google_appengine ~/.gae.$VER

# Create link to current version
ln --symbolic --force ~/.gae.$VER ~/.gae