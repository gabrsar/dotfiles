#!/bin/bash


echo "ZSH - Suggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed 's/^plugins=(/plugins=(\n\tzsh-autosuggestions/' -i ~/.zshrc

echo "ZSH - Highlight"
highlighting=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-highlighting 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$highlighting"
echo "source $highlight/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc 


clear

echo "Close this terminal and open a new one."


