# Add a new line before every prompt except the first
precmd() {
	precmd() {
		echo
	}
}

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

vc_info() {
	echo "%F{240}$(git_prompt_info)%f"
}

username() {
	echo "%F{240}%n%f"
}

exit_status() {
	echo "%(?..%{$fg[red]%}✘%f )"
}

PROMPT='$(username) $(exit_status)%0~/ '
RPROMPT='$(vc_info)'