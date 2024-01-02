#!/bin/sh
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"


# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=5000

# source
for alias_file in "$HOME/.config/aliases"/*.zsh; do
    source "$alias_file"
done

# plugins

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

export YSU_MESSAGE_POSITION="after"
export YSU_IGNORED_ALIASES=("cd..")
plug "MichaelAquilina/zsh-you-should-use"

# Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
