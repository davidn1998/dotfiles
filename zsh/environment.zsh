export ZSH_CONFIG="$DOTFILES/zsh"

set -o noclobber

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# PATH helper
path_add() {
  [[ -d "$1" ]] && PATH="$1:$PATH"
}

path_add "$HOME/.local/bin"
path_add "$HOME/.npm-global/bin"

export PATH

export EDITOR="nvim"
alias vim="nvim"

export PAGER="less"
