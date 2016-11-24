local MenubarMock = require 'mocks.menubar'
local CaffeinateMock = require 'mocks.caffeinate'

local menuBarMock = mock(MenubarMock)

package.loaded['hs.menubar'] = menuBarMock
package.loaded['hs.caffeinate'] = CaffeinateMock

local Caffeine = require 'caffeine'

describe('Caffeine', function()

  it('should start as inactive', function()
    assert.spy(menuBarMock.setClickCallback).was.called()
    assert.spy(menuBarMock.setIcon)
      .was.called_with(menuBarMock, './resources/caffeine-off.pdf')
  end)

  it('should toggle the sleep status', function()
    stub(CaffeinateMock, 'toggle').returns(true)
    Caffeine.click()
    assert.spy(menuBarMock.setIcon)
      .was.called_with(menuBarMock, './resources/caffeine-on.pdf')
  end)

end)

