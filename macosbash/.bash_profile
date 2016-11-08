# bash && gun
alias ls='ls --color=auto'
export LANG=en_US.UTF-8
set -o vi
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# git
export GIT_SSH=/Users/tx/go/src/github.com/txthinking/snippet/local-scripts/socks5proxyssh

# go
export GOPATH=/Users/tx/go
export PATH=$GOPATH/bin:$PATH

# android
export JAVA_HOME=$(/usr/libexec/java_home)
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

# quick
alias cdc='cd /Users/tx/go/src/github.com/txthinking'
alias envoy='./vendor/bin/envoy'
