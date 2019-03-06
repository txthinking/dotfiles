# bash && gun
export LANG=en_US.UTF-8
set -o vi
ulimit -S -n 2048

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/unzip/bin:$PATH"
if [ -d ~/flutter ]; then
    export PATH=~/flutter/bin:$PATH
fi
if [ -d ~/.pub-cache ]; then
    export PATH=~/.pub-cache/bin:$PATH
fi

export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export ANDROID_HOME=/Users/tx/Library/Android/sdk
export ANDROID_NDK_HOME=/Users/tx/Library/Android/sdk/ndk-bundle

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
alias ls='ls --color=auto'
alias cdc='cd ~/go/src/github.com/txthinking'
