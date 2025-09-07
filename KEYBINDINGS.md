# Keybinding Strategy

Cross-platform keybinding philosophy for consistent muscle memory.

## Philosophy

- **Super/Windows/Cmd Key**: Window management (thumb/middle finger access)
- **Alt/Option Key**: Application shortcuts (thumb access) 
- **Ctrl Key**: Minimal use - only for process control (Ctrl+C)
- **Avoid pinky-heavy shortcuts** whenever possible

## Key Mapping by Platform

### macOS
- **Cmd** = window management (native)
- **Option** = app shortcuts 
- **Ctrl** = process control only

### Linux  
- **Super** (Windows key) = window management
- **Alt** = app shortcuts
- **Ctrl** = process control only

### Windows
- **Windows Key** = window management  
- **Alt** = app shortcuts
- **Ctrl** = process control only

## Window Manager Shortcuts

**Navigation:**
- `Super + H` → Move focus left
- `Super + J` → Move focus down  
- `Super + K` → Move focus up
- `Super + L` → Move focus right

**Workspaces:**
- `Super + 1,2,3,4,5` → Switch to workspace N
- `Super + Shift + 1,2,3,4,5` → Move window to workspace N

**Window Management:**
- `Super + Enter` → New terminal
- `Super + Q` → Close window
- `Super + F` → Toggle fullscreen
- `Super + Space` → Toggle floating

## Application Shortcuts

**Standard Operations:**
- `Alt + A` → Select all
- `Alt + C` → Copy  
- `Alt + X` → Cut
- `Alt + V` → Paste
- `Alt + W` → Close tab/window
- `Alt + Q` → Quit application
- `Alt + S` → Save
- `Alt + Tab` → Switch applications

**Terminal Multiplexer (Zellij):**
- `Alt + N` → New pane
- `Alt + T` → New tab
- `Alt + D` → Detach session
- `Alt + Q` → Quit session
- `Alt + Shift + H,J,K,L` → Navigate between panes (internal only)
- `Alt + Shift + 1,2,3,4,5` → Switch to tab N

## Process Control

**Terminal:**
- `Ctrl + C` → Interrupt/kill process
- `Ctrl + Z` → Suspend process (if needed)
- `Ctrl + D` → EOF/logout (fish shell)

## Implementation Notes

### Window Managers to Configure:
- **macOS**: Yabai + skhd
- **Linux**: Hyprland, i3, or sway  
- **Windows**: Komorebi or PowerToys FancyZones

### Key Remapping Tools:
- **macOS**: Karabiner-Elements
- **Linux**: xremap, keyd, or WM built-in
- **Windows**: PowerToys Keyboard Manager, AutoHotkey

## Terminal-Specific Notes

### Fish Shell
Fish uses different shortcuts than bash/zsh:
- `Alt + ←/→` → Move by word (instead of Ctrl+A/E)
- `Alt + Backspace` → Delete word backward

### Zellij vs tmux
Zellij avoids tmux's prefix key approach:
- No `Ctrl+B` then another key
- Direct Alt combinations
- Visual command mode with `Alt+P`

## Future Additions

- [ ] Neovim keybinding integration
- [ ] Browser shortcut consistency  
- [ ] IDE/editor shortcut mapping
- [ ] Global clipboard manager shortcuts