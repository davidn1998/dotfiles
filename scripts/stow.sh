#!/usr/bin/env bash
set -e

echo "🔗 Linking dotfiles with stow..."

stow zsh
stow git
stow vim
stow nvim
stow commit

echo "✅ Dotfiles linked"
