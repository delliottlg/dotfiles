#!/bin/bash

# Dotfiles installer script
# Run this on a fresh machine to set up configs

set -e

echo "🚀 Setting up dotfiles..."

# Detect OS
OS="unknown"
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    OS="windows"
fi

echo "📱 Detected OS: $OS"

# Create config directories
mkdir -p ~/.config/{fish,alacritty,wezterm,wave}
if [[ "$OS" == "macos" ]]; then
    mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty
else
    mkdir -p ~/.config/ghostty
fi

# Create symlinks
echo "🔗 Creating symlinks..."

# Fish config
ln -sf "$(pwd)/fish/config.fish" ~/.config/fish/config.fish

# Ghostty config
if [[ "$OS" == "macos" ]]; then
    ln -sf "$(pwd)/ghostty/config" ~/Library/Application\ Support/com.mitchellh.ghostty/config
else
    ln -sf "$(pwd)/ghostty/config" ~/.config/ghostty/config
fi

# Terminal configs
echo "📟 Setting up terminal configs..."

# Alacritty
ln -sf "$(pwd)/terminals/alacritty/alacritty.toml" ~/.config/alacritty/alacritty.toml

# WezTerm  
ln -sf "$(pwd)/terminals/wezterm/wezterm.lua" ~/.config/wezterm/wezterm.lua

# Wave Terminal
ln -sf "$(pwd)/terminals/wave/config.json" ~/.config/wave/config.json

# Git config (if exists)
if [[ -f "git/.gitconfig" ]]; then
    ln -sf "$(pwd)/git/.gitconfig" ~/.gitconfig
fi

echo "✅ Dotfiles installed!"
echo "📝 Don't forget to:"
echo "   - Install fish shell"
echo "   - Install JetBrains Mono Nerd Font" 
echo "   - Install fisher and tide prompt"
echo "   - Install your preferred terminal(s):"
echo "     • Ghostty (macOS/Linux)"
echo "     • Alacritty (cross-platform)"
echo "     • WezTerm (cross-platform)"
echo "     • Wave Terminal (cross-platform)"