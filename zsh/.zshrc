# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------

export DOTFILES="$HOME/dotfiles"

source "$DOTFILES/zsh/environment.zsh"
source "$DOTFILES/zsh/tools.zsh"
source "$DOTFILES/zsh/plugins.zsh"
source "$DOTFILES/zsh/prompt.zsh"
source "$DOTFILES/zsh/aliases.zsh"

if [[ "$OSTYPE" == "darwin"* ]]; then
  source "$DOTFILES/zsh/macos.zsh"
fi
