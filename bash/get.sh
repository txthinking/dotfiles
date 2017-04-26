#!/bin/bash

mkdir /tmp/_
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/bash/.bash_profile -o /tmp/_/.bash_profile
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/bash/.bashrc -o /tmp/_/.bashrc
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/bash/use.sh -o /tmp/_/use.sh
chmod +x /tmp/_/use.sh

cd /tmp/_
./use.sh
rm -rf /tmp/_

echo 'Restart your shell:'
echo '    $ exec -l $SHELL'
