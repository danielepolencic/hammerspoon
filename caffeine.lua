local Menubar = require 'hs.menubar'
local Caffeinate = require 'hs.caffeinate'

local Caffeine = {}

local menubar = Menubar:new()
function setCaffeineDisplay(state)
    local result
    if state then
        result = menubar:setIcon('./resources/caffeine-on.pdf')
    else
        result = menubar:setIcon('./resources/caffeine-off.pdf')
    end
end

function Caffeine.click()
    setCaffeineDisplay(Caffeinate.toggle('displayIdle'))
end

if menubar then
    menubar:setClickCallback(Caffeine.click)
    setCaffeineDisplay(Caffeinate.get('displayIdle'))
end

return Caffeine
