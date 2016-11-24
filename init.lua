local Caffeine = require "./caffeine"

local mash = {"cmd", "alt", "ctrl"}

hs.hotkey.bind(mash, "/", Caffeine.click)

hs.hotkey.bind({"cmd", "shift"}, "O", function()
  hs.caffeinate.lockScreen()
end)
