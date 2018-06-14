#!/bin/bash

echo "Cloning..."

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Configuring..."
sed 's/^plugins=(/plugins=(\n\tzsh-autosuggestions/' -i ~/.zshrc

clear

echo "Close this terminal and open a new one."


