#!/usr/bin/env bash
set -e

echo "🔗 Linking dotfiles with stow..."

stow -R zsh
stow -R git
stow -R vim
stow -R nvim
stow -R commit

echo "✅ Dotfiles linked"
