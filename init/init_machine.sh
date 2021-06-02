#!/bin/bash
set -e

GITHUB_RAW_MIRROR="https://raw.fastgit.org"
# GITHUB_RAW_MIRROR="https://raw.githubusercontent.com"



function curl_sh_install(){
    echo "Installing $1..."
    sh -c "$(curl -fsSL ${GITHUB_RAW_MIRROR}/$2)"
    echo "$1 installed!"
}
######################
# Install oh-my-zsh
######################
curl_sh_install oh-my-zsh ohmyzsh/ohmyzsh/master/tools/install.sh


######################
# Install pyenv
######################
curl_sh_install pyenv pyenv/pyenv-installer/master/bin/pyenv-installer


######################
# Install gvm
######################
curl_sh_install gvm moovweb/gvm/master/binscripts/gvm-installer
