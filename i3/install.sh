#!/bin/bash
mv ~/.i3 ~/.i3.old
mv ~/.i3status.conf ~/.i3status.conf.old

ln -s $(pwd)/.i3 ~/.i3
ln -s $(pwd)/.i3status.conf ~/.i3status.conf
