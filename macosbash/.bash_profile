# bash && gun
alias ls='ls --color=auto'
export LANG=en_US.UTF-8
set -o vi
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
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
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

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

transfer() { 
    # check arguments
    if [ $# -eq 0 ]; 
    then 
        echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
        return 1
    fi

    # get temporarily filename, output is written to this file show progress can be showed
    tmpfile=$( mktemp -t transferXXX )
    
    # upload stdin or file
    file=$1

    if tty -s; 
    then 
        basefile=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g') 

        if [ ! -e $file ];
        then
            echo "File $file doesn't exists."
            return 1
        fi
        
        if [ -d $file ];
        then
            # zip directory and transfer
            zipfile=$( mktemp -t transferXXX.zip )
            cd $(dirname $file) && zip -r -q - $(basename $file) >> $zipfile
            curl --progress-bar --upload-file "$zipfile" "https://transfer.sh/$basefile.zip" >> $tmpfile
            rm -f $zipfile
        else
            # transfer file
            curl --progress-bar --upload-file "$file" "https://transfer.sh/$basefile" >> $tmpfile
        fi
    else 
        # transfer pipe
        curl --progress-bar --upload-file "-" "https://transfer.sh/$file" >> $tmpfile
    fi
   
    # cat output link
    cat $tmpfile

    # cleanup
    rm -f $tmpfile
}

# quick
alias cdc='cd /Users/tx/go/src/github.com/txthinking'
