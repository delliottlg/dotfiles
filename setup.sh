#!/bin/bash

# Complete dotfiles setup script
# Installs apps AND configs in one go

set -e

echo "🚀 Complete dotfiles setup starting..."

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

# Run OS-specific app installation
echo "📦 Installing applications..."
if [[ -f "scripts/$OS/install-apps.sh" ]]; then
    chmod +x "scripts/$OS/install-apps.sh"
    ./scripts/$OS/install-apps.sh
else
    echo "⚠️  No app installer found for $OS, skipping app installation"
fi

# Run config installation
echo "🔗 Installing configurations..."
./install.sh

echo "🎉 Complete setup finished!"
echo "🔄 Restart your terminal to see changes"