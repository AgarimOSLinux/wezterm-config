local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- General settings
config.enable_wayland = false
config.default_prog = {"/usr/bin/zsh", "-l"}
config.audible_bell = "Disabled"

-- Font configuration
config.font = wezterm.font_with_fallback({
    "JetBrains Maple Mono Extrabold",
    "Symbols Nerd Font Mono",
    "Noto Color Emoji",
    "IBM Plex Mono",
    "IBM Plex Sans",
})
config.font_size = 11.0
config.warn_about_missing_glyphs = false

-- Tab bar configuration
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.switch_to_last_active_tab_when_closing_tab = true
config.show_new_tab_button_in_tab_bar = false

-- Window configuration
config.enable_wayland = false
config.color_scheme = 'Catppuccin Mocha'
config.window_background_opacity = 0.84
config.adjust_window_size_when_changing_font_size = true
config.initial_rows = 22
config.initial_cols = 90
config.max_fps = 144
config.animation_fps = 144

-- Cursor configuration
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 500

-- Keyboard settings
config.use_ime = false
config.enable_kitty_keyboard = true

-- Tab colors (Catppuccin Mocha with mauve active and blue inactive)
config.colors = {
    tab_bar = {
        -- Background color of the tab bar
        background = '#1e1e2e',
        
        -- Active tab (Mauve)
        active_tab = {
            bg_color = '#cba6f7',
            fg_color = '#1e1e2e',
        },
        
        -- Inactive tabs (Blue)
        inactive_tab = {
            bg_color = '#89b4fa',
            fg_color = '#1e1e2e',
        },
        
        -- Inactive tab hover
        inactive_tab_hover = {
            bg_color = '#74a7f9',
            fg_color = '#1e1e2e',
        },
    },
}

-- Keybindings
config.keys = {
    {
        key = 'f',
        mods = 'ALT',
        action = wezterm.action.ToggleFullScreen,
    },
    {
        key = 'RightArrow',
        mods = 'CTRL',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'DownArrow',
        mods = 'CTRL',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
}

return config
