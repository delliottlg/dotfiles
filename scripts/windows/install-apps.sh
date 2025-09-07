#!/bin/bash

# Windows app installer for dotfiles setup
# Runs in Git Bash/WSL/MSYS2

set -e

echo "🪟 Installing Windows applications..."

# Check if we're in WSL
if grep -q Microsoft /proc/version 2>/dev/null; then
    echo "🐧 WSL detected - using Linux installation method"
    exec ../linux/install-apps.sh
fi

# Check for package managers (prefer Scoop over Chocolatey)
if command -v scoop &> /dev/null; then
    echo "🪣 Using Scoop package manager (preferred)"
    
    # Add extras bucket for more packages
    scoop bucket add extras
    scoop bucket add nerd-fonts
    
    # Install terminal emulators
    echo "📟 Installing terminal emulators..."
    scoop install alacritty wezterm
    
    echo "🐠 Installing fish shell..."
    scoop install fish
    
    echo "🔤 Installing JetBrains Mono Nerd Font..."
    scoop install JetBrainsMono-NF
    
elif command -v winget &> /dev/null; then
    echo "📦 Using winget package manager"
    
    # Install terminal emulators
    echo "📟 Installing terminal emulators..."
    winget install Alacritty.Alacritty
    winget install wez.wezterm
    
    # Fish shell
    echo "🐠 Fish shell: Manual install required"
    echo "   Download from: https://fishshell.com/"
    
    # Fonts  
    echo "🔤 Installing JetBrains Mono Nerd Font..."
    winget install "JetBrains Mono NF"

elif command -v scoop &> /dev/null; then
    echo "🪣 Using Scoop package manager"
    
    # Add extras bucket
    scoop bucket add extras
    scoop bucket add nerd-fonts
    
    # Install apps
    echo "📟 Installing terminal emulators..."
    scoop install alacritty wezterm
    
    echo "🐠 Installing fish shell..."
    scoop install fish
    
    echo "🔤 Installing JetBrains Mono Nerd Font..."
    scoop install JetBrainsMono-NF

else
    echo "❌ No supported package manager found!"
    echo "📝 Please install one of:"
    echo "   - Chocolatey: https://chocolatey.org/install"
    echo "   - Scoop: https://scoop.sh/"
    echo "   - Or use winget (built into Windows 11)"
    exit 1
fi

# Wave Terminal
echo "🌊 Wave Terminal installation:"
echo "   Download from: https://www.waveterm.dev/"

echo "✅ Windows applications installed!"
echo "📝 Next steps:"
echo "   - Run ./install.sh to set up configs"
echo "   - Restart your terminal"
echo "   - Install Fisher: fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher'"