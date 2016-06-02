# bash && gun
export LANG=en_US.UTF-8
set -o vi
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
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
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk
export PATH=$PATH:/Applications/Genymotion\ Shell.app/Contents/MacOS/:/Applications/Genymotion.app/Contents/MacOS/

# quick
alias d='docker'
alias cdb='cd /Users/tx/go/src/bitbucket.org/txthinking'
alias cdg='cd /Users/tx/go/src/github.com/txthinking'
alias envoy='./vendor/bin/envoy'
