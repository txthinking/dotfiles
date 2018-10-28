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
export PATH=/usr/local/bin:/usr/local/go/bin:$GOPATH/bin:$PATH

alias cdc='cd ~/go/src/github.com/txthinking/'
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

