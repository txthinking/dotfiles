#!/bin/bash

sudo apt-get -y install jq

sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/sysctl/sysctl.conf -o /etc/sysctl.conf
sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/limits/limits.conf -o /etc/security/limits.conf

version=$(curl -s https://api.github.com/repos/txthinking/brook/releases/latest | jq -r .tag_name)
curl -L https://github.com/txthinking/brook/releases/download/$version/brook -o brook
chmod +x brook

echo 'Help:'
echo '    $ ./brook -h'
echo 'Run:'
echo '    $ ./brook bkserver -l :9999 -p password -t 10'
echo 'Run in background:'
echo '    $ nohup ./brook bkserver -l :9999 -p password -t 10 &'
