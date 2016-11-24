package = 'myhs'
version = '0.0.1-0'
source = {
  url = 'https://github.com/danielepolencic/something'
}

description = {
  summary = "Hammerspoon config",
  detailed = [[
Hammerspoon config
  ]],
  homepage = 'https://github.com/danielepolencic/something',
  license = 'MIT'
}

dependencies = {
  "lua >= 5.1",
  "busted"
}

build = {
  type = 'none',
  install = {
  }
}
