#!/bin/bash

URL="https://www.dropbox.com/download?plat=lnx.x86_64"
TMP="/tmp/google-chrome-stable_current_amd64.$$.deb"

# Download and extract
cd ~ && wget -O - $URL | tar xzf -

# Run Setup
~/.dropbox-dist/dropboxd &