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
mkdir -p ~/.config/fish
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

# Git config (if exists)
if [[ -f "git/.gitconfig" ]]; then
    ln -sf "$(pwd)/git/.gitconfig" ~/.gitconfig
fi

echo "✅ Dotfiles installed!"
echo "📝 Don't forget to:"
echo "   - Install fish shell"
echo "   - Install JetBrains Mono Nerd Font"
echo "   - Install fisher and tide prompt"