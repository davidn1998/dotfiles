#!/usr/bin/env bash
set -e

echo "🔄 Updating system..."

# Homebrew
if command -v brew >/dev/null 2>&1; then
  echo "🍺 Updating Homebrew..."
  brew update
  brew upgrade
  brew cleanup
fi

# Dotfiles (relink everything safely)
if command -v stow >/dev/null 2>&1; then
  echo "🔗 Restowing dotfiles..."
  cd "$DOTFILES" || exit 1
  stow -R zsh git nvim
fi

echo "♻️ Reloading shell..."
exec zsh
