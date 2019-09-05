#!/bin/bash

echo "Replacing CAPS:Escape for now..."
setxkbmap -option caps:swapescape

echo "Making it persistent"
echo "setxkbmap -option caps:swapescape" >> .profile
