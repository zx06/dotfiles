#!/bin/bash

GITHUB_RAW_MIRROR="https://raw.fastgit.org"
# GITHUB_RAW_MIRROR="https://raw.githubusercontent.com"

######################
# Install oh-my-zsh
######################
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL ${GITHUB_RAW_MIRROR}/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "oh-my-zsh installed!"

######################
# Install pyenv
######################
echo "Installing pyenv..."
sh -c "$(curl -fsSL ${GITHUB_RAW_MIRROR}/pyenv/pyenv-installer/master/bin/pyenv-installer)"
echo "pyenv installed!"


######################
# Install poetry
######################
echo "Installing poetry..."
sh -c "$(curl -fsSL ${GITHUB_RAW_MIRROR}/python-poetry/poetry/master/get-poetry.py)"
echo "poetry installed!"

######################
# Install gvm
######################
echo "Installing gvm..."
sh -c "$(curl -fsSL ${GITHUB_RAW_MIRROR}/moovweb/gvm/master/binscripts/gvm-installer)"
echo "gvm installed!"
