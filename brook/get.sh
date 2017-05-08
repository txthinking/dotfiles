#!/bin/bash

sudo apt-get -y install jq

sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/sysctl/sysctl.conf -o /etc/sysctl.conf
sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/limits/limits.conf -o /etc/security/limits.conf

sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/brook/brook -o /etc/default/brook
sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/brook/brook.service -o /etc/systemd/system/brook.service

version=$(curl -s https://api.github.com/repos/txthinking/brook/releases/latest | jq -r .tag_name)
sudo curl -L https://github.com/txthinking/brook/releases/download/$version/brook -o /usr/bin/brook
sudo chmod +x /usr/bin/brook

echo 'Help:'
echo '    $ brook -h'
echo 'Run:'
echo '    $ brook bkserver -l :9999 -p password -t 10'
echo 'Run in background:'
echo '    $ nohup brook bkserver -l :9999 -p password -t 10 &'
echo
echo 'OR'
echo
echo 'Working with systemd:'
echo '    Config file: /etc/default/brook'
echo 'Start:'
echo '    $ sudo systemctl start brook.service'
echo 'Stop:'
echo '    $ sudo systemctl stop brook.service'
echo 'Start on bootup:'
echo '    $ sudo systemctl enable brook.service'
