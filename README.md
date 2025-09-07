# My Dotfiles

Cross-platform configuration files for a consistent development environment.

## What's Included

- **Fish Shell**: Config with git abbreviations, custom paths, and Tide prompt setup
- **Ghostty Terminal**: Dark theme with transparency and JetBrains Mono Nerd Font
- **Git**: Global git configuration (if present)

## Quick Setup

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Manual Setup

### Prerequisites

**macOS:**
```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install fish fisher
brew install --cask font-jetbrains-mono-nerd-font
```

**Linux:**
```bash
# Install fish (Ubuntu/Debian)
sudo apt install fish

# Or Arch Linux
sudo pacman -S fish

# Install Nerd Font manually or via package manager
```

### Post-Install

1. **Set Fish as default shell:**
   ```bash
   echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells  # macOS
   echo /usr/bin/fish | sudo tee -a /etc/shells           # Linux
   chsh -s /opt/homebrew/bin/fish                         # macOS
   chsh -s /usr/bin/fish                                  # Linux
   ```

2. **Install Tide prompt:**
   ```bash
   fish -c 'fisher install IlanCosman/tide@v6'
   fish -c 'tide configure'
   ```

3. **Restart your terminal**

## Structure

```
dotfiles/
├── fish/
│   └── config.fish       # Fish shell configuration
├── ghostty/
│   └── config           # Ghostty terminal configuration  
├── git/
│   └── .gitconfig       # Git global configuration
├── scripts/
│   └── ...              # Utility scripts
├── install.sh           # Automated installer
└── README.md           # This file
```

## Customization

Edit files in this repo and run `./install.sh` again to update symlinks.

## Platform Notes

- **macOS**: Ghostty config goes to `~/Library/Application Support/com.mitchellh.ghostty/`
- **Linux**: Ghostty config goes to `~/.config/ghostty/`
- **Windows**: Not yet supported (PRs welcome!)