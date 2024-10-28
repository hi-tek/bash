alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias myip='curl https://api.ipify.org'

# ll is often defined in .bashrc
unalias ll

# ll: enters given dir then lists it. Can also be used without param to just list current dir
ll(){
	if [ "$1" != "" ];
	then
		cd "$(echo "$1" | tr -d '\\')"
	fi

	ls -lh --group-directories-first
}

alias ll..='ll ..'

# lll: Same as ll but also display hidden files.
lll(){
	if [ "$1" != "" ];
	then
		cd "$(echo "$1" | tr -d '\\')"
	fi

	ls -lAh --group-directories-first
}

# Colors and prompt
export LSCOLORS=Dxfxcxdxbxegedabagacad

# Custom additions in separate optional files
if [ -f ~/.bash_aliases_extras ]; then
	. ~/.bash_aliases_extras
fi
