# dotfiles managed with chezmoi

## Prerequisites

1. Run initialization script:
   ```
   curl -L https://raw.githubusercontent.com/schaermu/dotfiles/refs/heads/master/_ensure_prerequisites.sh | bash
   ```
2. Unlock vault within current terminal session:
   ```
   export BW_SESSION=$(bw unlock --raw)
   ```

## Setup

To install the dotfiles on a new machine, use this command:

```
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply schaermu
```

## Tools

- WSL 2 / Debian-based distro
- Windows Terminal (Default Theme: One Half Dark)
- Fira Code Nerd Font Mono (11pt)
