#!/bin/bash
set -e

yum install -y vim

# arp-scan
yum install -y git automake autoconf libpcap-devel gcc
git clone https://github.com/royhills/arp-scan.git
cd arp-scan/
autoreconf --install
./configure
make
make check
make install
