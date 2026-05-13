#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

echo "🔗 Linking dotfiles with stow..."

stow -R zsh
stow -R git
stow -R vim
stow -R nvim
stow -R commit
stow -R tmux
stow -R starship
stow -R ghostty
stow -R luarc

echo "✅ Dotfiles linked"
