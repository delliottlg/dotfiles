#!/bin/bash

# Linux app installer for dotfiles setup

set -e

echo "🐧 Installing Linux applications..."

# Detect package manager
if command -v apt &> /dev/null; then
    PKG_MGR="apt"
    UPDATE_CMD="sudo apt update"
    INSTALL_CMD="sudo apt install -y"
elif command -v pacman &> /dev/null; then
    PKG_MGR="pacman"
    UPDATE_CMD="sudo pacman -Sy"
    INSTALL_CMD="sudo pacman -S --noconfirm"
elif command -v dnf &> /dev/null; then
    PKG_MGR="dnf"
    UPDATE_CMD="sudo dnf check-update || true"
    INSTALL_CMD="sudo dnf install -y"
else
    echo "❌ No supported package manager found (apt/pacman/dnf)"
    exit 1
fi

echo "📦 Using package manager: $PKG_MGR"
$UPDATE_CMD

# Install fish shell
echo "🐠 Installing fish shell..."
$INSTALL_CMD fish

# Install terminal emulators
echo "📟 Installing terminal emulators..."
if [[ "$PKG_MGR" == "apt" ]]; then
    # Ubuntu/Debian
    $INSTALL_CMD alacritty
    # WezTerm (AppImage or build from source)
    echo "🔧 WezTerm: Download AppImage from https://github.com/wez/wezterm/releases"
    # Ghostty (build from source)
    echo "🔧 Ghostty: Clone and build from https://github.com/mitchellh/ghostty"
    
elif [[ "$PKG_MGR" == "pacman" ]]; then
    # Arch Linux
    $INSTALL_CMD alacritty wezterm
    # Ghostty from AUR
    echo "🔧 Ghostty: Install from AUR (yay -S ghostty)"
    
elif [[ "$PKG_MGR" == "dnf" ]]; then
    # Fedora
    $INSTALL_CMD alacritty
    echo "🔧 WezTerm/Ghostty: Check Copr repos or build from source"
fi

# Install fonts (if fontconfig available)
if command -v fc-cache &> /dev/null; then
    echo "🔤 Installing JetBrains Mono Nerd Font..."
    mkdir -p ~/.local/share/fonts
    wget -O /tmp/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
    unzip -o /tmp/JetBrainsMono.zip -d ~/.local/share/fonts/
    fc-cache -fv
    rm /tmp/JetBrainsMono.zip
fi

# Fisher (fish package manager)
echo "🎣 Installing Fisher..."
fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher'

echo "✅ Linux applications installed!"
echo "📝 Next steps:"
echo "   - Run ./install.sh to set up configs"
echo "   - Set fish as default shell:"
echo "     echo /usr/bin/fish | sudo tee -a /etc/shells"
echo "     chsh -s /usr/bin/fish"