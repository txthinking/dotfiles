#!/bin/bash

cp .vimrc ~
rm -rf ~/.vim
mkdir ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
sudo apt-get -y install python-dev cmake
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py
