alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias myip='curl https://api.ipify.org'
#alias show='defaults write com.apple.finder AppleShowAllFiles TRUE'
#alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE'

# ll is often defined in .bashrc
unalias ll

# ll: enters given dir then lists it. Can also be used without param to just list current dir
ll(){
	if [ "$1" != "" ];
	then
		cd $1
	fi

	ls -lh --group-directories-first
}

alias ll..='ll ..'

# lll: Same as ll but also display hidden files.
lll(){
	if [ "$1" != "" ];
	then
		cd $1
	fi

	ls -lAh --group-directories-first
}

# Colors
export LSCOLORS=Dxfxcxdxbxegedabagacad
