if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\h:\w \u$ "
alias ll='LC_COLLATE=C ls -alF'

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

