#!/bin/bash
set -e

# GITHUB_RAW_MIRROR="https://raw.fastgit.org"
GITHUB_RAW_MIRROR="https://raw.githubusercontent.com"

# $1:coler $2:str
function colored_echo(){
    echo -e "\033[$1m$2\033[0m"
}


function curl_sh_install(){
    echo "Installing $1..."
    sh -c "$(curl -fsSL ${GITHUB_RAW_MIRROR}/$2)"
    colored_echo 32 "$1 installed!"
}



######################
# Install oh-my-zsh
######################
if test -d ~/.oh-my-zsh
then
    colored_echo 33 "oh-my-zsh already installed."
else
    curl_sh_install oh-my-zsh ohmyzsh/ohmyzsh/master/tools/install.sh
fi


######################
# Install pyenv
######################
if test -d ~/.pyenv
then
    colored_echo 33 "pyenv already installed."
else
    curl_sh_install pyenv pyenv/pyenv-installer/master/bin/pyenv-installer
fi

######################
# Install gvm
######################
if test -d ~/.gvm
then
    colored_echo 33 "gvm already installed."
else
    curl_sh_install gvm moovweb/gvm/master/binscripts/gvm-installer
fi