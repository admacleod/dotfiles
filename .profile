# Disable colouring
export NO_COLOR=true

# Source .kshrc
if [[ $0 = *ksh ]]; then
	export ENV=$HOME/.kshrc
fi
