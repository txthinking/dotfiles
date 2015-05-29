# bash && gun
export LANG=en_US.UTF-8
set -o vi
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# go
export GOPATH=/Users/tx/go
export PATH=$GOPATH/bin:$PATH

# docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tx/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# android
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export ANDROID_HOME=/Users/tx/Library/Android/sdk
export NDK_ROOT=/Users/tx/ndk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK_ROOT:$NDK_ROOT/toolchains:$PATH

# quick
alias d='docker'
alias cdb='cd /Users/tx/go/src/bitbucket.org/txthinking'
alias cdg='cd /Users/tx/go/src/github.com/txthinking'
alias envoy='./vendor/bin/envoy'
