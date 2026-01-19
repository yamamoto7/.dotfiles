local hyper = {"cmd", "alt", "ctrl"}

-- ============================================
-- Application Launcher
-- ============================================
-- Quick launch apps with hyper + key
local appShortcuts = {
    ["1"] = "Ghostty",
    ["2"] = "Google Chrome",
    ["3"] = "Cursor",
    ["4"] = "Slack",
    ["5"] = "Notion",
    ["6"] = "Obsidian",
}

for key, app in pairs(appShortcuts) do
    hs.hotkey.bind(hyper, key, function()
        hs.application.launchOrFocus(app)
    end)
end

-- ============================================
-- Focus Next Display
-- ============================================
-- ディスプレイをX座標でソート → 現在のマウス位置の画面 → 次の画面中央へ移動 → クリック

local function screensLeftToRight()
  local screens = hs.screen.allScreens()
  table.sort(screens, function(a, b)
    return a:frame().x < b:frame().x
  end)
  return screens
end

local function currentScreenIndex(screens)
  local pos = hs.mouse.getAbsolutePosition()
  for i, s in ipairs(screens) do
    if hs.geometry.point(pos):inside(s:frame()) then
      return i
    end
  end
  return 1
end

local function focusNextDisplay()
  local screens = screensLeftToRight()
  if #screens <= 1 then return end

  local cur = currentScreenIndex(screens)
  local nxt = (cur % #screens) + 1
  local target = screens[nxt]:frame()

  -- 画面中央へ移動
  local center = { x = target.x + target.w / 2, y = target.y + target.h / 2 }
  hs.mouse.setAbsolutePosition(center)

  -- クリックでフォーカス確定（必要なら下のクリックは外してもOK）
  hs.eventtap.leftClick(center)
end

hs.hotkey.bind(hyper, "N", focusNextDisplay)
