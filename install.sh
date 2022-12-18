#!/usr/bin/bash

## - - -
## Install Suricata on Ubuntu Server 22.04.1 LTS
## [Reference:](https://suricata.readthedocs.io/en/latest/quickstart.html#installation)
## - - -

OS=$(lsb_release -si)
VER=$(lsb_release -sr)

function init() {
    cd ~/
    mkdir -p ~/Workspaces
    mkdir -p ~/Workspaces/git-clones
    ln -svf ~/Workspaces/git-clones/ ~/gitClones

    if [[ ! -f ~/.bash_aliases ]]; then
        echo 'alias l="ls -CF"' >> ~/.bash_aliases
        echo 'alias ll="ls -alF"' >> ~/.bash_aliases
        echo 'alias la="ls -A"' >> ~/.bash_aliases
        echo 'alias lla="ls -la"' >> ~/.bash_aliases
        echo 'alias .."cd .."' >> ~/.bash_aliases
        echo 'alias ..2="cd ../.."' >> ~/.bash_aliases
        echo 'alias ..3="cd ../../.."' >> ~/.bash_aliases
        echo 'alias ..4="cd ../../../.."' >> ~/.bash_aliases
        echo 'alias gti="git"' >> ~/.bash_aliases
        echo 'alias got="git"' >> ~/.bash_aliases
        echo 'alias ls-la="ls -la"' >> ~/.bash_aliases
    fi
}

function updateOS() {
    sudo apt-get update && sudo apt-get upgrade -y
}

function install() {
    sudo apt-get install software-properties-common rustc cargo
    sudo add-apt-repository ppa:oisf/suricata-stable
    sudo apt-get update
    sudo apt-get install suricata jq
    sudo cargo install --force --debug --version 0.14.1 cbindgen

    # TODO: add /root/.caro/bin to path    
}

function run() {
    if $VER != "22.04"; then
        echo "Not Ubuntu Server 22.04 LTS exiting..."
    else
        init();
        install();
        updateOS();
        exit
    fi
} 

run();
