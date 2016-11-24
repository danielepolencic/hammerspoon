local MenubarMock = {}

function MenubarMock:new()
  local o = {}
  setmetatable(o, self)
  self.__index = self
  return o
end

function MenubarMock:setIcon()
end

function MenubarMock:setClickCallback(fn)
end

return MenubarMock
