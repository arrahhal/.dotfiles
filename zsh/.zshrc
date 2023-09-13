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

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

function zvm_config() {
    # Disable the cursor style feature
    ZVM_CURSOR_STYLE_ENABLED=false
}
plug "jeffreytse/zsh-vi-mode"

# Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
