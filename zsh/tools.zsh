# ------------------------------------------------------------------------------
# Homebrew
# ------------------------------------------------------------------------------

eval "$(/opt/homebrew/bin/brew shellenv)"

# ------------------------------------------------------------------------------
# Node (nvm only)
# ------------------------------------------------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && source "/opt/homebrew/opt/nvm/nvm.sh"

# ------------------------------------------------------------------------------
# fzf
# ------------------------------------------------------------------------------

# fzf shell integration (cross-platform)
if command -v fzf >/dev/null 2>&1; then
  # Homebrew (macOS)
  if command -v brew >/dev/null 2>&1 && [ -f "$(brew --prefix)/opt/fzf/shell/completion.zsh" ]; then
    source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
    source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
  # Linux (apt/pacman)
  elif [ -f /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
  fi
fi

# ------------------------------------------------------------------------------
# direnv
# ------------------------------------------------------------------------------

if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

# ------------------------------------------------------------------------------
# bun (optional)
# ------------------------------------------------------------------------------

if [ -s "$HOME/.bun/_bun" ]; then
  export BUN_INSTALL="$HOME/.bun"
  source "$BUN_INSTALL/_bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi
