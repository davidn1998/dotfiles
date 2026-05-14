# --------------------------------------------
# Autosuggestions
# --------------------------------------------
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# --------------------------------------------
# History substring search
# --------------------------------------------
source "$(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh"

# --------------------------------------------
# Zoxide (smart cd)
# --------------------------------------------
eval "$(zoxide init zsh)"

# --------------------------------------------
# Autopair (auto-close brackets/quotes)
# --------------------------------------------
source "$(brew --prefix)/share/zsh-autopair/autopair.zsh"

# --------------------------------------------
# Syntax highlighting (MUST be last)
# --------------------------------------------
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# --------------------------------------------
# Alias suggestion (zsh-you-should-use)
# --------------------------------------------
source "$(brew --prefix)/share/zsh-you-should-use/you-should-use.plugin.zsh"
