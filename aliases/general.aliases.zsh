if command ls --color -d . &> /dev/null; then
	alias ls='ls --color=auto'
fi

# List directory contents
alias la='ls  --group-directories-first -AF ' # Compact view, show hidden
alias ll='ls -alF --group-directories-first'
alias l='ls -aF --group-directories-first'
alias l1='ls -1F --group-directories-first'

alias grep='grep --color=auto'

alias c='clear'

alias q='exit'

# Language aliases
alias py='python'
alias ipy='ipython'

# Editors
alias v='vim'
alias n='nvim'


alias ..='cd ..'         # Go up one directory
alias cd..='cd ..'       # Common misspelling for going up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories

# Shell History
alias h='history'

# Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Directory
alias md='mkdir -p'
alias rd='rmdir'

# Shorten extract
alias xt='extract'

