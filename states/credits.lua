-- Credits

local state = {}

local cnv = nil
local credits_txt = ''
local y = 0

function state:enter()-- visuals
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  lg.setBackgroundColor(0, 0, 0)

  y = 70
  credits_txt = [[
Programming
  name1

Writing
  name 2

Art
  name 3]]

  lg.setFont(f.sml)
end

function state:update(dt)
  y = y - 0.1
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()

  lg.print(credits_txt, 5, y, 0, 0.1, 0.1)

love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

return state