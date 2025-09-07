# Application List

Essential applications across platforms for development and daily use.

## Core Development

### Terminals
- **Ghostty** (macOS/Linux) - Fast, native terminal
- **Alacritty** (Cross-platform) - GPU-accelerated speed
- **WezTerm** (Cross-platform) - Feature-rich multiplexer
- **Wave Terminal** (Cross-platform) - AI-integrated modern terminal

### Shells & Tools
- **Fish Shell** (Cross-platform) - User-friendly shell
- **Bash** (Cross-platform) - Standard shell (usually pre-installed)
- **Zsh** (Cross-platform) - Extended shell
- **Zellij** (Cross-platform) - Terminal multiplexer (tmux alternative)
- **Fisher** (Cross-platform) - Fish package manager
- **Tide** (Cross-platform) - Fish prompt
- **OpenSSH** (Cross-platform) - SSH client (any implementation fine)
- **btop/htop** (Cross-platform) - Better system monitor
- **fd** (Cross-platform) - Modern find replacement
- **ripgrep** (Cross-platform) - Fast grep replacement
- **bat** (Cross-platform) - Better cat with syntax highlighting
- **eza** (Cross-platform) - Modern ls replacement with icons
- **jq** (Cross-platform) - JSON processor
- **httpie** (Cross-platform) - Better curl for API testing
- **direnv** (Cross-platform) - Auto-load environment per directory
- **mosh** (Cross-platform) - Better SSH for unreliable connections
- **ncdu** (Cross-platform) - Disk usage analyzer

### Editors & IDEs
- **Neovim** (Cross-platform) - Modern vim
- **LazyVim** (Cross-platform) - Neovim distribution with sane defaults
- **Vim** (Cross-platform) - Classic editor (fallback when nvim missing)
- **VS Code** (Cross-platform) - Feature-rich editor
- **Claude Code** (Cross-platform) - AI-powered coding assistant

## System Tools

### Package Managers
- **Homebrew** (macOS) - Package manager
- **Chocolatey** (Windows) - Package manager
- **Scoop** (Windows) - Package manager alternative

### Password Management
- **1Password** (Cross-platform) - Password manager with CLI
- **1Password CLI** (Cross-platform) - CLI for secure API key management

### File Sync & Network
- **Tailscale** (Cross-platform) - VPN mesh network for multi-machine access
- **Syncthing** (Cross-platform) - Decentralized file sync

### Key Remapping
- **Karabiner-Elements** (macOS) - Key customization
- **PowerToys** (Windows) - System utilities
- **AutoHotkey** (Windows) - Scripting for automation

### Window Management
- **Yabai** (macOS) - Tiling window manager
- **Hyprland** (Linux) - Modern Wayland compositor
- **i3** (Linux) - Classic tiling WM
- **Komorebi** (Windows) - Tiling window manager
- **Rectangle** (macOS) - Simple window snapping
- **PowerToys FancyZones** (Windows) - Window layouts

## Development Tools

### Version Control
- **Git** (Cross-platform) - Version control
- **GitHub CLI** (Cross-platform) - GitHub integration
- **GitKraken** (Cross-platform) - Full-featured Git GUI + CLI
- **lazygit** (Cross-platform) - Terminal UI for git operations

### Languages & Runtimes
- **Node.js** (Cross-platform) - JavaScript runtime
- **npm** (Cross-platform) - Node package manager (comes with Node)
- **Python** (Cross-platform) - Programming language
  - **pip3** - Python package installer (global install)
  - **uv** - Fast Python package installer (global install via pip3)
  - **venv/virtualenv** - Virtual environment tools
- **Rust** (Cross-platform) - Systems programming
- **Go** (Cross-platform) - Programming language

### AI/ML Tools
- **OpenAI Codex** (Cross-platform) - AI coding assistant
- **Google Gemini CLI** (Cross-platform) - AI assistant

### Game Development
- **Unity** (Cross-platform) - Game engine (manual install, not CLI)
- **Steam** (Cross-platform) - Game platform & launcher (may want to comment out for minimal installs)

### Databases
- **PostgreSQL** (Cross-platform) - Database
- **Redis** (Cross-platform) - In-memory store
- **SQLite** (Cross-platform) - Lightweight database

## Security & Network

### Security Tools
- **Kali Linux** - Security distribution (USB/VM)
- **DarkArch** - Security-focused Arch (USB/VM)
- **Wireshark** (Cross-platform) - Network analyzer
- **Nmap** (Cross-platform) - Network scanner

### Network Tools
- **OpenSSH** (Cross-platform) - SSH client/server
- **Tailscale** (Cross-platform) - VPN mesh network
- **curl** (Cross-platform) - HTTP client
- **wget** (Cross-platform) - File downloader

## Media & Productivity

### Browsers
- **Google Chrome** (Cross-platform) - Full Chrome with sync (NOT Chromium)
- **Firefox** (Cross-platform) - Privacy-focused browser

### Communication
- **Zoom** (Cross-platform) - Video conferencing
- **Slack** (Cross-platform) - Team communication
- **Discord** (Cross-platform) - Chat platform

### Email
- **Alpine** (Cross-platform) - Terminal email client

### Media & Screenshots
- **VLC** (Cross-platform) - Media player
- **OBS** (Cross-platform) - Screen recording/streaming
- **NormCap** (Cross-platform) - OCR screenshot tool (text capture)
- **Ksnip** (Cross-platform) - Screenshot tool with OCR plugins

## Fonts

### Programming Fonts
- **JetBrains Mono Nerd Font** - Primary coding font
- **Fira Code** - Alternative with ligatures
- **Hack Nerd Font** - Clean monospace option

## Platform-Specific

### macOS Only
- **Finder** - File manager (native)
- **Spotlight** - Search (native)
- **Mission Control** - Virtual desktops (native)

### Linux Only
- **Nautilus/Thunar/Dolphin** - File managers
- **Rofi/dmenu** - Application launchers
- **Picom** - Compositor for X11

### Windows Only
- **Windows Terminal** - Modern terminal
- **WSL2** - Linux subsystem
- **PowerShell** - Modern shell

## Windows Package Manager Notes

### Package Manager Comparison
- **Chocolatey**: Invasive, system-wide installs, can break existing tools (avoid)
- **Scoop**: User-level, isolated installs, less conflicts (recommended for dev tools)
- **winget**: Microsoft official, conservative, limited packages (good for GUI apps)
- **Manual**: Most reliable but tedious (best for complex apps)

### Windows Installation Strategy
```bash
# Use different managers for different purposes
winget install "Google Chrome"     # Big, official apps
scoop install git python nodejs    # Dev tools (isolated)
# Manual install Unity, Steam, etc. # Complex apps
```

### Avoiding Windows Pain
- **Never mix managers** for the same tool
- **Check existing installs first** before using package manager  
- **Use scoop for dev tools**, winget for GUI apps
- **Skip package managers** for tools you already have working
- **Test on disposable VM first** if unsure

### Recovery Strategy
If package manager breaks existing tools:
1. Uninstall via package manager
2. Remove from PATH manually  
3. Reinstall manually or with different manager
4. Consider full PATH cleanup

## Installation Priority

### Tier 1 (Essential)
1. Package manager for platform
2. Fish shell + Fisher + Tide
3. One terminal emulator
4. Neovim or VS Code
5. Git + GitHub CLI

### Tier 2 (Development)
1. Node.js/Python/preferred language
2. Terminal multiplexer (Zellij)
3. Key remapping tool
4. Window manager/snapping tool

### Tier 3 (Productivity)
1. Browser
2. Communication tools
3. Media player
4. Additional terminals

### Tier 4 (Specialized)
1. Security tools
2. Network tools
3. Database tools
4. Streaming/recording tools