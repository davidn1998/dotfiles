#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "🔄 Updating system..."

# Homebrew
if command -v brew >/dev/null 2>&1; then
  echo "🍺 Updating Homebrew..."
  brew update
  brew upgrade
  brew tap anomalyco/tap 2>/dev/null || true
  brew bundle --cleanup --file "$DOTFILES_DIR/mac/Brewfile"
  brew cleanup
fi

# Dotfiles (relink everything safely)
if command -v stow >/dev/null 2>&1; then
  echo "🔗 Restowing dotfiles..."
  cd "$DOTFILES_DIR" || exit 1
  stow -R zsh git nvim
fi

echo "♻️ Reloading shell..."
exec zsh
