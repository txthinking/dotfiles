# bash && gun
alias ls='ls --color=auto'
export LANG=en_US.UTF-8
set -o vi
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
export PATH="/usr/local/opt/curl/bin:$PATH"
if [ -d ~/flutter ]; then
    export PATH=~/flutter/bin:$PATH
fi

# git
export GIT_SSH=~/.socks5proxyssh

# go
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

# android
export JAVA_HOME=$(/usr/libexec/java_home)
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk

ix() {
	local opts
	local OPTIND
	[ -f "$HOME/.netrc" ] && opts='-n'
	while getopts ":hd:i:n:" x; do
		case $x in
			h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
			d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
			i) opts="$opts -X PUT"; local id="$OPTARG";;
			n) opts="$opts -F read:1=$OPTARG";;
		esac
	done
	shift $(($OPTIND - 1))
	[ -t 0 ] && {
		local filename="$1"
		shift
		[ "$filename" ] && {
			curl $opts -F f:1=@"$filename" $* ix.io/$id
			return
		}
		echo "^C to cancel, ^D to send."
	}
	curl $opts -F f:1='<-' $* ix.io/$id
}

filelink(){ if [ $# -eq 0 ];then echo "$ filelink /path/to/file";return 1;fi;if [ ! -f $1 ];then echo "$1 does not exists";return 1;fi;echo $(curl --progress-bar -H "x-file-name: $(basename $1)" --data-binary @$1 https://filelink.io); }

# quick
alias cdc='cd ~/go/src/github.com/txthinking'
