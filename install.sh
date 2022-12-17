#!/usr/bin/bash

## Install Suricata on Ubuntu Server 22.04.1 LTS
## [Reference:](https://suricata.readthedocs.io/en/latest/quickstart.html#installation)

sudo apt-get install software-properties-common rustc cargo
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update
sudo apt-get install suricata jq
sudo cargo install --force --debug --version 0.14.1 cbindgen

add /root/.caro/bin to path?