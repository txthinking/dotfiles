#!/bin/bash

curl -o https://raw.githubusercontent.com/txthinking/dotfiles/master/macosbash/.bash_profile ~/.bash_profile

echo 'Restart your shell:'
echo '    $ exec -l $SHELL'
