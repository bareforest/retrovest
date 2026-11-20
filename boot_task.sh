#!/usr/bin/env bash
set -e
TAG="crimson-ember-eager-comet"
LIB="viscous-tide.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/bareforest/retrovest/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
