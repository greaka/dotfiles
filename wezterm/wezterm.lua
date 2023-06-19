local wezterm = require('wezterm')
local mytable = require("lib/mystdlib").mytable
local theme = require('theme')
local configuration = require('configuration')

function font_with_fallback(name, params)
    local names = {name, "Blobmoji"}
    return wezterm.font_with_fallback(names, params)
end

local cfg_misc = {
    -- OpenGL for GPU acceleration, Software for CPU
    front_end = "OpenGL",

    -- No updates, bleeding edge only
    check_for_updates = false,

    -- Font Stuff
    font = font_with_fallback("Sarasa Mono K"),
    font_rules = {
        {
            italic = true,
            font = font_with_fallback("Sarasa Mono K", {italic = true})
        }, {
            italic = true,
            intensity = "Bold",
            font = font_with_fallback("Sarasa Mono K",
                                      {bold = true, italic = true})
        },
        {
            intensity = "Bold",
            font = font_with_fallback("Sarasa Mono K", {bold = true})
        },
        {intensity = "Half", font = font_with_fallback("Sarasa Mono K Light")}
    },
    font_size = 11.0,
    font_shaper = "Harfbuzz",
    line_height = 1.0,
    freetype_load_target = "HorizontalLcd",
    freetype_render_target = "Normal",

    -- Cursor style
    default_cursor_style = "SteadyUnderline",

    -- X Bad
    enable_wayland = false,

    -- Pretty Colors
    bold_brightens_ansi_colors = true,

    -- Get rid of close prompt
    window_close_confirmation = "NeverPrompt",

    -- Padding
    window_padding = {left = 20, right = 20, top = 20, bottom = 20},

    -- No opacity
    inactive_pane_hsb = {saturation = 1.0, brightness = 1.0}
}

-- Colors
local cfg_colors = {colors = theme.colors}

-- Tab Style (like shape)
local cfg_tab_bar_style = theme.tab_style

-- Keys
local cfg_keys = configuration.keys

-- Merge everything and return
local config = mytable.merge_all(cfg_misc, cfg_colors, cfg_tab_bar_style,
                                 cfg_keys)
return config
