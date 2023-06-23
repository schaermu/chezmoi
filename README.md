# dotfiles managed with chezmoi
## Prerequisites
Some of the files are encrypted (work-specific stuff) using [age](https://github.com/FiloSottile/age), so it has to be installed before setting up the dotfiles in a new environment: `sudo apt-get install age`.

## Setup
To install the dotfiles on a new machine, use this command:
```
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply schaermu
```

## Tools
- WSL 2 / Debian-based distro
- Windows Terminal (Default Theme: One Half Dark)
- Fira Code Nerd Font Mono (11pt)
