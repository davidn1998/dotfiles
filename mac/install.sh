#!/usr/bin/env bash
set -e

echo "🍎 macOS setup starting..."

# Install Homebrew if missing
if ! command -v brew >/dev/null 2>&1; then
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Load brew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "📦 Installing Brew bundle..."
brew bundle --cleanup --file="$DOTFILES_DIR/mac/Brewfile"

echo "✅ macOS setup complete"
