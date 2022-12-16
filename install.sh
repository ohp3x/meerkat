#!/usr/bin/bash

## install suricata on ubuntu server 22.04.1 LTS

sudo apt-get install software-properties-common rustc cargo
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update
sudo apt-get install suricata
sudo cargo install --force --debug --version 0.14.1 cbindgen