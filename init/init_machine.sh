#!/bin/bash
######################
# Install oh-my-zsh
######################
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "oh-my-zsh installed!"

######################
# Install gvm
######################
echo "Installing gvm..."
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
echo "gvm installed!"
