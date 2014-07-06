#!/bin/bash

YUI_IN="https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar"
YUI_OUT="$HOME/.yuicompressor/yuicompressor-latest.jar"

# Make directory
mkdir --parents $HOME/.yuicompressor

# Download jar
wget --output-document $YUI_OUT $YUI_IN