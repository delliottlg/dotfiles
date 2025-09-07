-- WezTerm configuration matching Ghostty setup
-- Place this file at: ~/.config/wezterm/wezterm.lua (all platforms)

local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font configuration
config.font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Regular' })
config.font_size = 14.0

-- Window appearance
config.window_background_opacity = 0.92
config.macos_window_background_blur = 5
config.window_padding = {
  left = 10,
  right = 10,
  top = 8,
  bottom = 8,
}

-- Colors (Tomorrow Night theme to match)
config.colors = {
  foreground = '#c5c8c6',
  background = '#050505',
  
  cursor_bg = '#c5c8c6',
  cursor_fg = '#1d1f21',
  cursor_border = '#c5c8c6',
  
  selection_fg = '#000000',
  selection_bg = '#fffacd',
  
  scrollbar_thumb = '#222222',
  
  split = '#444444',
  
  ansi = {
    '#1d1f21', -- black
    '#cc6666', -- red
    '#b5bd68', -- green
    '#f0c674', -- yellow
    '#81a2be', -- blue
    '#b294bb', -- magenta
    '#8abeb7', -- cyan
    '#c5c8c6', -- white
  },
  
  brights = {
    '#666666', -- bright black
    '#d54e53', -- bright red
    '#b9ca4a', -- bright green
    '#e7c547', -- bright yellow
    '#7aa6da', -- bright blue
    '#c397d8', -- bright magenta
    '#70c0b1', -- bright cyan
    '#eaeaea', -- bright white
  },
}

-- Shell configuration
-- Detect platform and set appropriate shell
local function get_default_shell()
  if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    return { 'pwsh.exe' } -- or 'cmd.exe' if you prefer
  elseif wezterm.target_triple:find('apple') then
    return { '/opt/homebrew/bin/fish' }
  else
    return { '/usr/bin/fish' }
  end
end

config.default_prog = get_default_shell()

-- Start directory
config.default_cwd = wezterm.home_dir

-- Tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Key bindings
config.keys = {
  -- Font size
  { key = '+', mods = 'CMD', action = wezterm.action.IncreaseFontSize },
  { key = '-', mods = 'CMD', action = wezterm.action.DecreaseFontSize },
  { key = '0', mods = 'CMD', action = wezterm.action.ResetFontSize },
  
  -- New window/tab
  { key = 'n', mods = 'CMD', action = wezterm.action.SpawnWindow },
  { key = 't', mods = 'CMD', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  
  -- Splits
  { key = 'd', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'd', mods = 'CMD|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
}

-- Performance
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

return config