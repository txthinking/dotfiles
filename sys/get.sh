#!/bin/bash

sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/sysctl/sysctl.conf -o /etc/sysctl.conf
sudo curl -s https://raw.githubusercontent.com/txthinking/dotfiles/master/limits/limits.conf -o /etc/security/limits.conf
