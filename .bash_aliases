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

# Colors and prompt
export LS_COLORS="di=93:ln=35:so=32:pi=33:ex=91:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:*.deb=01;36:*.rpm=01;36:*.zip=01;36:*.gz=01;36:*.7z=01;36:*.rar=01;36:*.tar=01;36"

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;90m\]\u@\h\[\033[00m\]:\[\033[01;93m\]\w\[\033[00m\]\$ '
fi