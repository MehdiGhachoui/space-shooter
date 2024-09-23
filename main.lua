
local lurker = require 'lib.lurker'

local gravity = -10

love.update = function (dt)
  lurker.scan()

  gravity = gravity + 5

  if gravity > love.graphics.getHeight() then
    gravity = -10
  end
end

love.draw = function ()
  local window_width = love.graphics.getWidth()
  local window_height = love.graphics.getHeight()

  -- meteor
  love.graphics.circle("fill", 400,gravity,10)

  -- ship
  love.graphics.rectangle("line", 400,window_height*80/100,40,40)
end

