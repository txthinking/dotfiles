#!/bin/bash

sudo apt-get -y install make gcc g++ python-dev cmake vim-nox git build-essential python3-dev

cp ./.vimrc ~
rm -rf ~/.vim
mkdir ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

echo 'Compile:'
echo '    $ ~/.vim/bundle/YouCompleteMe/install.py'
echo 'Compile with Go:'
echo '    $ ~/.vim/bundle/YouCompleteMe/install.py --gocode-completer'
echo 'Compile with NodeJS:'
echo '    $ ~/.vim/bundle/YouCompleteMe/install.py --tern-completer'
