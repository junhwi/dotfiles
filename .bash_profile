if hash brew 2>/dev/null; then
	if [ -f $(brew --prefix)/etc/bash_completion ]; then
		. $(brew --prefix)/etc/bash_completion
	fi
fi

PS1="\h:\w \u$ "
# OSX doesn't have .bashrc PS1 will be overwritten in linux
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\$(__git_ps1 '[%s] ')$PS1"
alias ll='LC_COLLATE=C ls -alF'

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
