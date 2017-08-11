#!/bin/bash
mv ~/.i3 ~/.i3.old
mv ~/.i3status.conf ~/.i3status.conf.old

ln -s .i3 ~/.i3
ln -s .i3status.conf ~/.i3status.conf
