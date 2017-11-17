#!/bin/bash

rofiConfigDir="$HOME/.config/rofi"
set -e

mkdir -p $rofiConfigDir
ln -s "$(pwd)/config" "$rofiConfigDir/config"

echo "success"
rofi -show run

