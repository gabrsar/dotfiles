#!/bin/bash

ln -s $(pwd)/.vim $HOME/.vim
ln -s $(pwd)/.vimrc $HOME/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Now open Vim and run: ':PluginInstall' command"


