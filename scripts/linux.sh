#!/usr/bin/env bash
set -e

echo "🐧 Linux setup starting..."

# Detect package manager
if command -v apt >/dev/null 2>&1; then
  PM="apt"
elif command -v pacman >/dev/null 2>&1; then
  PM="pacman"
else
  echo "❌ Unsupported Linux package manager"
  exit 1
fi

echo "📦 Using package manager: $PM"

if [[ "$PM" == "apt" ]]; then
  sudo apt update
  sudo apt install -y \
    git neovim fzf ripgrep fd-find bat zoxide tmux curl wget unzip build-essential stow

elif [[ "$PM" == "pacman" ]]; then
  sudo pacman -Syu --noconfirm
  sudo pacman -S --noconfirm \
    git neovim fzf ripgrep fd bat zoxide tmux curl wget unzip base-devel stow
fi

# Link dotfiles
if command -v stow >/dev/null 2>&1; then
  SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  DOTFILES_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
  cd "$DOTFILES_DIR" || exit 1
  bash scripts/stow.sh
fi

echo ""
echo "✅ Linux setup complete"
