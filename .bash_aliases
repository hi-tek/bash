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

# to-webserver: upload a file to the web server
alias towebserver='function _to_webserver() { scp "$1" johan@web01.mindpoint.se:/websites/"$2"; }; _to_webserver'

# Colors and prompt
export LSCOLORS=Dxfxcxdxbxegedabagacad

# Custom additions in separate optional files
if [ -f ~/.bash_aliases_extras ]; then
	. ~/.bash_aliases_extras
fi
