-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28 

-- or, changing the font size and color scheme.
config.color_scheme = 'tokyonight_moon'
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
-- config.window_decorations = "RESIZE"
-- config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false

config.inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
}

config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false})
config.font_size = 12

-- config.color_scheme = 'AdventureTime'

config.background = {
    -- This is the deepest/back-most layer. It will be rendered first
    {
        source = {
            File = 'C:/Users/Therapy/Pictures/壁纸/金克斯.jpg'
        },
            -- The texture tiles vertically but not horizontally.
        -- When we repeat it, mirror it so that it appears "more seamless".
        -- An alternative to this is to set `width = "100%"` and have
        -- it stretch across the display
        repeat_x = 'NoRepeat',
        -- When the viewport scrolls, move this layer 10% of the number of
        -- pixels moved by the main viewport. This makes it appear to be
        -- further behind the text.
        attachment = "Fixed", -- {Parallax = 0.1} 在视口中以1:10的比例随滚动像素滚动
        width = '100%',

	opacity = 1,

        -- hsb = dimmer,
        hsb = {
            -- Darken the background image by reducing it to 1/3rd
            brightness = 0.2,

            -- You can adjust the hue by scaling its value.
            -- a multiplier of 1.0 leaves the value unchanged.
            hue = 1.0,

            -- You can adjust the saturation also.
            saturation = 1.0,
        }
    },
}

config.window_background_opacity = 0.5 -- opacity as you please

config.default_prog = {"D:/Programs/Scoop/apps/powershell/current/pwsh.exe"}

------- 键盘绑定 -------
local act = wezterm.action

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000}
config.keys = {
    { key = 'q', mods = 'LEADER',   action=act.QuitApplication },

    { key = 'H', mods = 'LEADER',   action = act.SplitHorizontal { domain = 'CurrentPaneDomain'} },
    { key = 'V', mods = 'LEADER',   action = act.SplitVertical { domain = 'CurrentPaneDomain'} },
--    { key = 'q', mods = 'CTRL',     action = act.CloseCurrentPane { confirm = false } },
    
    { key = 'LeftArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left'},
    { key = 'RightArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right'},
    { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up'},
    { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down'},

    -- CTRL +T创建默认的Tab
    --{ key = 't', mods = 'CTRL', action = act.SpawnTab 'DefaultDomain'},
    -- CTRL+W关闭当前Tab
    --{ key = 'w', mods = 'CTRL', action = act.CloseCurrentTab { confirm = false } },
}

for i = 1,8 do
    -- CTRL + number to activate that tab
    table.insert(config.keys,{
        key = tostring(i),
        mods = 'CTRL',
        action = act.ActivateTab(i - 1),
    })
end

-- Finally, return the configuration to wezterm:
return config
