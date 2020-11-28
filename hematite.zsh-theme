# Add a new line before every prompt except the first
precmd() {
	precmd() {
		echo
	}
}

username() {
	echo "%F{240}%n%f"
}

exit_status() {
	echo "%(?..%{$fg[red]%}✘%f )"
}

PROMPT='$(username) $(exit_status)%0~/ '
RPROMPT=''