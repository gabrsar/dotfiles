#!/bin/bash

# https://askubuntu.com/a/193073

set  -euo pipefail
I1FS=$'\n\t'
mkdir -p /tmp/adodefont
cd /tmp/adodefont
wget -q --show-progress -O source-code-pro.zip https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip -q source-code-pro.zip -d source-code-pro
fontpath="${XDG_DATA_HOME:-$HOME/.local/share}"/fonts
mkdir -p $fontpath
cp -v source-code-pro/*/OTF/*.otf $fontpath
fc-cache -f
rm -rf source-code-pro{,.zip}
