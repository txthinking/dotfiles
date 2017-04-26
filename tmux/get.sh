#!/bin/bash

sudo apt-get -y install mux

mkdir /tmp/_
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/tmux/.tmux.conf -o /tmp/_/.tmux.conf
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/tmux/use.sh -o /tmp/_/use.sh
chmod +x /tmp/_/use.sh

cd /tmp/_
./use.sh
rm -rf /tmp/_
