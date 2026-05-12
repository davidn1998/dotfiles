# dotfiles

Personal development environment configuration, managed with [stow](https://www.gnu.org/software/stow/).

## Quick start

```bash
git clone git@github.com:davidnwachukwu/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap
exec zsh
```

## What's included

| Package | Config | Description |
|---------|--------|-------------|
| `zsh` | `.zshrc`, `.zprofile`, `aliases.zsh`, `plugins.zsh`, `tools.zsh`, `prompt.zsh` | Shell config with autosuggestions, syntax highlighting, fzf, zoxide, starship prompt |
| `git` | `.gitconfig` | Git aliases, colors, LFS, URL shorthands |
| `nvim` | `.config/nvim/` | Neovim with lazy.nvim, LSP (Mason), telescope, autopairs, formatting |
| `tmux` | `.tmux.conf` | Tmux with TPM, gruvbox theme, vim-like pane navigation |
| `vim` | `.vimrc` | Legacy vim config |
| `commit` | `.czrc` | Commitizen conventional commits |
| `starship` | `.config/starship.toml` | Starship prompt theme |
| `ghostty` | `.config/ghostty/config` | Ghostty terminal config |
| `iterm2` | `com.googlecode.iterm2.plist` | iTerm2 preferences (auto-synced) |

## Commands

- `update` — update packages and relink dotfiles
- `bootstrap` — full system setup (macOS or Linux)

## macOS

The `mac/Brewfile` contains all Homebrew formulae and casks. On a fresh Mac, `bootstrap` handles Homebrew installation and runs `brew bundle --cleanup` automatically.

## Linux

The `scripts/linux.sh` handles package installation via `apt` or `pacman`. Wired into `bootstrap` and ready when you need it.
