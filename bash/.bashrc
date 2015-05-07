# non-login shell will read this file
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

PS1='FUCK \W $ '
#export DISPLAY=:0.0
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
set -o vi
