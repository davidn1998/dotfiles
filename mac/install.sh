#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "🍎 macOS setup starting..."
bash "$DOTFILES_DIR/scripts/macos.sh"
echo "✅ macOS setup complete"
