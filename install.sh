#!/usr/bin/bash

## install suricata on ubuntu server 22.04.1 LTS

sudo apt-get install build-essential libpcap-dev   \
                libnet1-dev libyaml-0-2 libyaml-dev pkg-config zlib1g zlib1g-dev \
                libcap-ng-dev libcap-ng0 make libmagic-dev         \
                libgeoip-dev liblua5.1-dev libhiredis-dev libevent-dev \
                python-yaml rustc cargo libpcre2-dev  \
				libnetfilter-queue-dev libnetfilter-queue1  \
                libnetfilter-log-dev libnetfilter-log1      \
                libnfnetlink-dev libnfnetlink0  \
                rustc cargo

sudo cargo install --force --debug --version 0.14.1 cbindgen

