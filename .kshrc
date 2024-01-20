# Source root kshrc if it exists
if [ -r /etc/ksh.kshrc ]; then
	. /etc/ksh.kshrc
fi

HISTCONTROL=ignoredups:ignorespace
HISTFILE=$HOME/.history
HISTSIZE=10000

PS1="\u \w \$ "
if [[ -n $SSH_CONNECTION || -n $SSH_CLIENT || -n $SSH_TTY ]]; then
	PS1="\u@\H \w \$ "
fi
