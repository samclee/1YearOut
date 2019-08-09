-- Credits

local state = {}

local cnv = nil
local credits_txt = ''
local y = 0
local moving = false

function state:enter(from, p)-- visuals
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  lg.setBackgroundColor(pal[4])
  self.final = p.final
  moving = false

  if self.final then
    bgm.credits:play()
  end

  y = 32
  credits_txt = [[
game name








Programming
  name1

Writing
  name 2

Art
  name 3]]

  lg.setFont(f.sml)
  ti.after(16, function() moving = true end)
end

function state:update(dt)
  if moving then 
    y = y - 0.05
  end
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()
  lg.setColor(pal[1])
  lg.print(credits_txt, 5, y, 0, 0.1, 0.1)

love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:keypressed(k)
  if not self.final then gs.pop() end
end

return state