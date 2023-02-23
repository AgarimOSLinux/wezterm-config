local wezterm = require 'wezterm'

return {
term = 'wezterm',

--Font config
--font = wezterm.font 'Pragmasevka',

font = wezterm.font_with_fallback({
       "Pragmasevka",
       "feather",
        }),

font_size = 18.0,
bold_brightens_ansi_colors = true,

-- Tab
enable_tab_bar = true,
hide_tab_bar_if_only_one_tab = true,  -- Smart tab bar [distraction-free mode]
tab_bar_at_bottom = true,
tab_max_width = 32,
use_fancy_tab_bar = true,
show_tab_index_in_tab_bar = true,
switch_to_last_active_tab_when_closing_tab = true,
show_new_tab_button_in_tab_bar = true,

window_padding = {
  left = 10,
  right = 10,
  top = 5,
  bottom = 5,
  },

window_decorations = "RESIZE",

-- Initial window size on startup
initial_rows = 22,
initial_cols = 72,

adjust_window_size_when_changing_font_size = true,

--Scrollback config
enable_scroll_bar = false,
--scrollback_lines = 5000, -- How many lines of scrollback you want to retain per tab (default is 3500)

default_cursor_style = "BlinkingBlock",

enable_wayland = true,

use_ime = false,

default_prog = {"/usr/bin/zsh", "-l"}, -- Spawn a zsh shell in login mode
default_cwd = "$HOME",

warn_about_missing_glyphs = false,
check_for_updates = false,
exit_behavior = "Close",
audible_bell = "Disabled",

color_scheme = 'Catppuccin Mocha',
window_background_opacity = 0.88,

keys = {

       {
        key = 'RightArrow',mods = 'CTRL',
        action = wezterm.action.SplitHorizontal {  domain = 'CurrentPaneDomain'},
        },

       {
        key = 'DownArrow',mods = 'CTRL',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain'},
        }
        },
}