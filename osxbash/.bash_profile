# bash && gun
set -o vi
PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# go
GOPATH=/Users/tx/go
PATH=$GOPATH/bin:$PATH

# docker
DOCKER_HOST=tcp://192.168.59.103:2376
DOCKER_CERT_PATH=/Users/tx/.boot2docker/certs/boot2docker-vm
DOCKER_TLS_VERIFY=1

# android
JAVA_HOME=$(/usr/libexec/java_home)
PATH=$JAVA_HOME/bin:$PATH
ANDROID_HOME=/Users/tx/Library/Android/sdk
NDK_ROOT=/Users/tx/ndk
PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK_ROOT:$NDK_ROOT/toolchains:$PATH

# quick
alias d='docker'
alias cdb='cd /Users/tx/go/src/bitbucket.org/txthinking'
alias cdg='cd /Users/tx/go/src/github.com/txthinking'
alias envoy='./vendor/bin/envoy'
