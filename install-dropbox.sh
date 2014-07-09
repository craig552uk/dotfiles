#!/bin/bash

URL="https://www.dropbox.com/download?plat=lnx.x86_64"

# Download and extract
cd ~ && wget -O - $URL | tar xzf -

# Run Setup
~/.dropbox-dist/dropboxd &