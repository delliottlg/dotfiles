#!/bin/bash

# macOS app installer for dotfiles setup

set -e

echo "🍺 Installing macOS applications via Homebrew..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "📥 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH for this session
    if [[ -f "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

# Install terminal emulators
echo "📟 Installing terminal emulators..."
brew install --cask ghostty alacritty wezterm

# Install shell and tools
echo "🐠 Installing fish shell and tools..."
brew install fish fisher zellij

# Install fonts
echo "🔤 Installing JetBrains Mono Nerd Font..."
brew install --cask font-jetbrains-mono-nerd-font

# Install keyboard customization
echo "⌨️  Installing Karabiner-Elements for key remapping..."
brew install --cask karabiner-elements

# Install Wave Terminal (manual download required)
echo "🌊 Wave Terminal installation:"
echo "   Download from: https://www.waveterm.dev/"
echo "   (No Homebrew formula available yet)"

echo "✅ macOS applications installed!"
echo "📝 Next steps:"
echo "   - Run ./install.sh to set up configs"
echo "   - Set fish as default shell:"
echo "     echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells"
echo "     chsh -s /opt/homebrew/bin/fish"