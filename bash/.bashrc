# non-login shell will read this file
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='FUCK \W $ '
set -o vi

#export DISPLAY=:0.0
export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

alias d='sudo docker'
alias mysql='sudo docker exec -it mysql /usr/local/mysql/bin/mysql -u root -p111111 -h 127.0.0.1'
alias bower='./node_modules/.bin/bower'
alias gulp='./node_modules/.bin/gulp'
alias browserify='./node_modules/.bin/browserify'
function composer(){
    d exec php sh -c "cd $(pwd) && /usr/local/bin/composer $1 $2 $3 $4 $5 $6 $7 $8 $9"
}
function php(){
    d exec php sh -c "cd $(pwd) && /usr/local/bin/php $1 $2 $3 $4 $5 $6 $7 $8 $9"
}
