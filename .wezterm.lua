local wezterm = require 'wezterm'
local act = wezterm.action

return {
  font = wezterm.font_with_fallback {
    {
      family = 'JetBrains Mono',
      weight = 'Medium',
      harfbuzz_features = { 'calt=0', 'clig=1', 'liga=1' },
    },
    { family = 'Terminus', weight = 'Bold' },
    'Noto Color Emoji',
  },
  -- color_scheme = 'Batman',
  keys = {
    -- CTRL | SHIFT + TAB -> ActiveTab = -1
    -- CTRL | SHIFT + R -> Reload config
    -- CTRL | SHIFT -> 
    { key = "k", mods = "ALT", action = act({ SpawnTab = "CurrentPaneDomain" }) },
    { key = 'j', mods = 'CTRL', action = act.ActivateKeyTable { name = 'after_ctrl_j', one_shot = true } },
    { key = 'm', mods = 'CMD', action = 'DisableDefaultAssignment' },
    {
      -- key = 'LeftArrow',
      key = 'h',
      mods = 'CTRL|SHIFT',
      action = act.ActivatePaneDirection 'Left',
    },
    {
      -- key = 'RightArrow',
      key = 'l',
      mods = 'CTRL|SHIFT',
      action = act.ActivatePaneDirection 'Right',
    },
    {
      -- key = 'UpArrow',
      key = 'k',
      mods = 'CTRL|SHIFT',
      action = act.ActivatePaneDirection 'Up',
    },
    {
      -- key = 'DownArrow',
      key = 'j',
      mods = 'CTRL|SHIFT',
      action = act.ActivatePaneDirection 'Down',
    },
  },
  key_tables = {
    after_ctrl_j = {
      { key = 's', action = act.SplitPane {
        direction = 'Right',
        -- command = { args = { 'top' } },
        size = { Percent = 50 },
      } },
      { key = 't', action = act.SplitPane {
        direction = 'Down',
        -- command = { args = { 'top' } },
        size = { Percent = 50 },
      } },
    },
    resize_pane = {
      { key = 'h', action = act.AdjustPaneSize {"Left", 1} },
      { key = 'j', action = act.AdjustPaneSize {"Down", 1} },
      { key = 'k', action = act.AdjustPaneSize {"Up", 1} },
      { key = 'l', action = act.AdjustPaneSize {"Right", 1} },
      { key = 'Escape', action = 'PopKeyTable' },
    },
  },
}
