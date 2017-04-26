#!/bin/bash

mkdir /tmp/_
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/vim/.vimrc -o /tmp/_/.vimrc
curl https://raw.githubusercontent.com/txthinking/dotfiles/master/vim/use.sh -o /tmp/_/use.sh
chmod +x /tmp/_/use.sh

echo "Compile:"
echo '    $ cd /tmp/_ && ./use.sh'
