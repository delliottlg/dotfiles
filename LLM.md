# Instructions for AI Assistants

**Hey AI! Read this before helping me code.**

## My Development Environment

### Core Setup
- **Shell**: Fish (not bash/zsh) with custom abbreviations
- **Terminal**: Ghostty (macOS/Linux), WezTerm, Alacritty alternatives
- **Multiplexer**: Zellij (NOT tmux - I hate tmux keybindings)
- **Editor**: Neovim primary, VS Code backup, Claude Code when available
- **Font**: JetBrains Mono Nerd Font everywhere

### Key Philosophy
- **Minimal Ctrl usage** - it's pinky-heavy, avoid it except Ctrl+C
- **Super key for window management** - don't conflict with app shortcuts
- **Alt key for app shortcuts** - consistent across platforms
- **Fish abbreviations over aliases** - they expand visibly

### Platform Reality
I work across **many machines**:
- MacBook Pro (macOS) - primary
- MacBook Air (macOS + Asahi Linux)
- Gaming PC (EndeavourOS + Ubuntu + Windows 11)
- HP Laptop (Windows 11)  
- Various VMs and USB keys (Kali, DarkArch)
- Raspberry Pi (headless robot)

**Always suggest cross-platform solutions first.**

## Python Preferences

### Package Management
- **uv** is the future - prefer `uv pip install` over `pip install`
- **venv** for virtual environments (I'm familiar with it)
- **pip3** globally for installing uv and essential tools only
- **NO global package installs** for project dependencies
- Python 3.13 is problematic - many packages don't have wheels yet

### My Fish Aliases You Should Know
```fish
uvenv  # Creates and activates venv with uv
uvi    # uv pip install shortcut
cdghl  # cd to ~/Documents/GitHub/lingraphica-app
cdgh   # cd to ~/Documents/GitHub
```

## Code Style Preferences

### General
- **Explain your reasoning** - I like to understand why
- **Cross-platform first** - if it only works on one OS, mention alternatives
- **Practical over perfect** - working code > theoretical best practices
- **Security aware** - I do security research, don't suggest risky patterns

### File Organization
- **Use existing patterns** in the codebase
- **Check what's already installed** before suggesting new dependencies
- **Prefer editing existing files** to creating new ones
- **Don't create README/docs** unless explicitly asked

## Windows-Specific Warnings

### Package Managers
- **Scoop preferred** - user-level installs, less invasive
- **winget acceptable** - Microsoft official, limited selection  
- **Chocolatey AVOID** - it broke my scrcpy/adb setup, system-wide conflicts
- **Manual install** for complex apps (Unity, Steam)

### General Windows Pain Points
- Package managers can break existing PATH setups
- Never mix package managers for the same tool
- Test on disposable VMs if unsure

## When Helping Me Code

### Do This
- Ask about existing dependencies before adding new ones
- Suggest fish shell commands/abbreviations when relevant
- Consider all my platforms when recommending tools
- Explain trade-offs between different approaches
- Use my established keybinding philosophy

### Don't Do This
- Assume I'm only on one platform
- Suggest tmux (I hate the keybindings)
- Install Python packages globally (except pip3, uv)
- Use Chocolatey on Windows
- Create files without reading existing code first
- Ignore cross-platform compatibility

## My Typical Workflows

### Starting New Project
1. `uvenv` (creates venv + activates)
2. `uvi <packages>` (install deps fast)
3. Let you handle the complex architecture decisions
4. Git commit frequently

### Working Across Machines
1. `git clone` my dotfiles repo
2. Run `./setup.sh` for complete environment
3. Everything should look/work the same
4. Sync changes back to dotfiles repo

### Security Research
- Sometimes working in Kali/DarkArch environments
- Need tools that work offline/air-gapped
- Privacy-conscious - prefer open source when possible

## Multi-LLM Context

I work with different AI assistants:
- **Claude** (you): Planning, architecture, explanations
- **Codex/Copilot**: Quick coding, autocomplete
- **Gemini**: Research, compatibility checks
- **Amazon Q**: Hail Mary attempts (it's weird)

**If I mention another AI helped with code**, don't be offended - use that context to understand the existing patterns and continue in the same style.

## Current Priorities

### Dotfiles Evolution
- Cross-platform terminal configs ✓
- Comprehensive app installation scripts ✓  
- Keybinding consistency across platforms ✓
- Security tool integration (in progress)
- Neovim configuration (future)

### Active Projects
- Lingraphica app (main work project)
- Various security research
- Multi-platform development environment
- AI-assisted workflow optimization

## Final Notes

- **I'm learning** - explain complex concepts but don't over-explain basics
- **I'm practical** - working solutions over elegant theory
- **I'm cross-platform** - always consider all my machines
- **I'm security-minded** - don't suggest risky shortcuts
- **I'm efficiency-focused** - aliases, shortcuts, and automation are good

**Most importantly: Ask questions if something isn't clear. I'd rather over-communicate than have you guess wrong.**