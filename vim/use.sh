#!/bin/bash

sudo apt-get -y install make gcc g++ python-dev cmake vim-nox git build-essential python3-dev silversearcher-ag

cp ./.vimrc ~
rm -rf ~/.vim
mkdir ~/.vim

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

vim +PluginInstall +qall
vim +GoInstallBinaries +qall

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

~/.vim/bundle/YouCompleteMe/install.py --gocode-completer --js-completer
