# -------------------------
# helpers
# -------------------------
_exists() {
  command -v "$1" >/dev/null 2>&1
}

# -------------------------
# navigation
# -------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ~="cd ~"

# common dirs (only if they exist)
[ -d ~/Desktop ]   && alias dt='cd ~/Desktop'
[ -d ~/Downloads ] && alias dl='cd ~/Downloads'
[ -d ~/Projects ]  && alias pj='cd ~/Projects'
[ -d ~/dotfiles ]  && alias dotfiles='cd ~/dotfiles'

# git root jump
alias gr='cd $(git rev-parse --show-toplevel 2>/dev/null || pwd)'

# -------------------------
# editor / tools
# -------------------------
alias e="$EDITOR"

# quick reload
alias reload="exec zsh"

# dotfiles bootstrap helpers
alias update="$DOTFILES/scripts/update.sh"
alias bootstrap="$DOTFILES/bootstrap"

# -------------------------
# ls / eza (modern ls)
# -------------------------
if _exists eza; then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza -lah --icons --git'
  alias la='eza -la --icons'
  alias l='eza -l --icons'

  alias lt='eza --tree --icons'
  alias tree='eza --tree --icons'
fi

# -------------------------
# cat / bat
# -------------------------
if _exists bat; then
  export MANPAGER="bat -plman"
  alias cat='bat'
fi

# -------------------------
# zoxide (better cd)
# -------------------------
if _exists zoxide; then
  alias cd='z'
fi

# -------------------------
# git
# -------------------------
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate --all"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"

# git root shortcut (extra safety version)
alias git-root='cd $(git rev-parse --show-toplevel 2>/dev/null)'

# -------------------------
# utilities
# -------------------------
alias clr="clear"
alias path='echo -e ${PATH//:/\\n}'

alias myip="curl -s ifconfig.me"

# safer rm if trash exists
if _exists trash; then
  alias rm='trash'
fi

# -------------------------
# misc modern CLI tools
# -------------------------
_exists lazygit && alias lg='lazygit'
_exists glow && alias md='glow -p'
_exists opencode && alias oc='opencode'
_exists tldr && alias help='tldr'
