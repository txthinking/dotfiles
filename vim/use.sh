#!/bin/bash

sudo apt-get -y install make gcc g++ python-dev cmake vim-nox

cp .vimrc ~
rm -rf ~/.vim
mkdir ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py
