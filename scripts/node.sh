#!/usr/bin/env bash
set -e

echo "🟢 Setting up Node (nvm)..."

# ---------------------------------------------------------------------------
# Setup NVM directory
# ---------------------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"

# Load nvm (Homebrew installs it here)
if [ -s "/opt/homebrew/opt/nvm/nvm.sh" ]; then
  source "/opt/homebrew/opt/nvm/nvm.sh"
elif [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
  source "/usr/local/opt/nvm/nvm.sh"
else
  echo "❌ nvm not found"
  exit 1
fi

# ---------------------------------------------------------------------------
# Install Node LTS if not installed
# ---------------------------------------------------------------------------
if ! nvm ls --no-colors | grep -q "lts"; then
  echo "📦 Installing Node LTS..."
  nvm install --lts
fi

echo "📦 Using Node LTS..."
nvm use --lts

echo "📌 Setting LTS as default..."
nvm alias default "lts/*"

# ---------------------------------------------------------------------------
# Enable corepack (yarn / pnpm)
# ---------------------------------------------------------------------------
echo "⚙️ Enabling corepack..."
corepack enable

echo "✅ Node setup complete"
