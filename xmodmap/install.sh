#!/bin/bash
ln -vs $(pwd)/.xmodmap $HOME/.xmodmap

echo "Replacing Capslock <-> Escape"
xmodmap ~/.xmodmap
