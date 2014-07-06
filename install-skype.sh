#!/bin/bash

URL="http://www.skype.com/go/getskype-linux-deb"
TMP="/tmp/getskype-linux-deb-32.$$.deb"

# Download installer
wget --output-document $TMP $URL

# Install
sudo dpkg --install $TMP

if [ $? -ne 0 ]; then
	# Install missing dependencies
	sudo apt-get --fix-broken --yes install
	
	# Try again
	sudo dpkg --install $TMP
fi

# Clean up
rm --force $TMP