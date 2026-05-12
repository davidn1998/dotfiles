#!/usr/bin/env bash
set -e

echo "🍎 macOS setup starting..."

# ---------------------------------------------------------------------------
# Homebrew
# ---------------------------------------------------------------------------
if ! command -v brew >/dev/null 2>&1; then
  echo "📦 Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "📦 Installing Brew bundle..."
brew bundle --file="$DOTFILES_DIR/Brewfile"

echo ""
echo "📦 Package layer (future abstraction)"
echo "➡ macOS uses Brewfile"

echo ""
echo "✅ macOS setup complete"
