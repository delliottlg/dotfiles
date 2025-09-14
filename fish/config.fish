# No banner
set -g fish_greeting ''

# Paths
fish_add_path ~/.local/bin ~/bin /opt/homebrew/bin /usr/local/bin
fish_add_path ~/Documents/projects/apiOrg ~/Library/pnpm
fish_add_path ~/.dotnet/tools /Library/Frameworks/Mono.framework/Versions/Current/Commands
fish_add_path /Applications/Wireshark.app/Contents/MacOS /Applications/Ghostty.app/Contents/MacOS
fish_add_path ~/Library/Android/sdk/emulator ~/Library/Android/sdk/platform-tools

# Git abbrevs (expand before run)
abbr -a gs  'git status'
abbr -a gco 'git checkout'
abbr -a gc  'git commit -v'
abbr -a gl  'git pull --rebase --autostash'
abbr -a gp  'git push'

# Directory shortcuts
abbr -a cdghl 'cd ~/Documents/GitHub/lingraphica-app'
abbr -a cdgh 'cd ~/Documents/GitHub'

# Python/uv shortcuts
abbr -a uvenv 'uv venv && source .venv/bin/activate'
abbr -a uvi 'uv pip install'

# Ghostty shell integration (extras when launched from Ghostty)
if set -q GHOSTTY_RESOURCES_DIR
    source "$GHOSTTY_RESOURCES_DIR/shell-integration/fish/vendor_conf.d/ghostty-shell-integration.fish"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
