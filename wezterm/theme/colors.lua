local col = {}

col.foreground = "#ffffff"
col.background = "#1a2026"
col.cursor_bg = "#58483b"
col.cursor_fg = "#58483b"
col.cursor_border = "#58483b"
col.split = "#58483b"

col.ansi = {
    "#29343d", "#f9929b", "#7ed491", "#fbdf90", "#a3b8ef", "#ccaced", "#9ce5c0",
    "#ffffff"
}
col.brights = {
    "#3b4b58", "#fca2aa", "#a5d4af", "#fbeab9", "#bac8ef", "#d7c1ed", "#c7e5d6",
    "#eaeaea"
}

col.tab_bar = {
    background = "#1a2026",
    active_tab = {bg_color = "#3b4b58", fg_color = "#eaeaea", italic = true},
    inactive_tab = {bg_color = "#29343d", fg_color = "#1a2026"},
    inactive_tab_hover = {bg_color = "#29343d", fg_color = "#1a2026"}
}

return col
