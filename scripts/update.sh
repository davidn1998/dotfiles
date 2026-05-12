#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OS="$(uname -s)"

echo "🔄 Updating system..."

# ---------------------------
# Package manager updates
# ---------------------------
if [[ "$OS" == "Darwin" ]]; then
  if command -v brew >/dev/null 2>&1; then
    echo "🍺 Updating Homebrew..."
    brew update
    brew upgrade
    brew tap anomalyco/tap 2>/dev/null || true
    brew bundle --cleanup --file "$DOTFILES_DIR/mac/Brewfile"
    brew cleanup
  fi

elif [[ "$OS" == "Linux" ]]; then
  if command -v apt >/dev/null 2>&1; then
    echo "📦 Updating apt packages..."
    sudo apt update && sudo apt upgrade -y
  elif command -v pacman >/dev/null 2>&1; then
    echo "📦 Updating pacman packages..."
    sudo pacman -Syu --noconfirm
  fi
fi

# ---------------------------
# Dotfiles (relink everything safely)
# ---------------------------
if command -v stow >/dev/null 2>&1; then
  cd "$DOTFILES_DIR" || exit 1
  bash scripts/stow.sh
fi

echo "♻️ Reloading shell..."
exec zsh
