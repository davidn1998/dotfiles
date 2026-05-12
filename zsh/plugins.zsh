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
# Syntax highlighting (MUST be last)
# --------------------------------------------
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
