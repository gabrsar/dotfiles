#!/bin/bash

ln -s $(pwd)/xinitrc/.xinitrc $HOME/.xinitrc
ln -s $(pwd)/xmodmap/.xmodmap $HOME/.xmodmap

ln -s $(pwd)/.vim $HOME/.vim
ln -s $(pwd)/.vimrc $HOME/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Open Vim and rum :PluginInstall"

ln -s $(pwd)/


