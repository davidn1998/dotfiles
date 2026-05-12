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

# Make brew available immediately
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

echo "🍺 Brew ready: $(brew --version | head -n 1)"

echo "📦 Installing Brew bundle..."
brew tap anomalyco/tap 2>/dev/null || true
brew bundle --cleanup --file="$DOTFILES_DIR/mac/Brewfile"

# Ensure stow is available
if ! command -v stow >/dev/null 2>&1; then
  echo "❌ stow missing after brew install"
  exit 1
fi

echo "✅ macOS setup complete"
