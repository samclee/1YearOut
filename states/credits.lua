-- Credits

local state = {}

local cnv = nil
local credits_txt = ''
local y = 0
local moving = false
local cover = {}

function state:enter(from, p)-- visuals
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  lg.setBackgroundColor(pal[4])
  moving = false
  cover = {o = 1}

  --bgm.credits:play()


  y = 32
  credits_txt = [[
1 year out







Design
  sam lee
  jonny hopkins

Writing
  violet elder
  kelly weng

Programming
  sam lee
  jonny hopkins

Art
  erica
    cherrington
  angie ta

Music
   (see readme)





thank you for 
  playing!
   ]]


  lg.setFont(f.sml)
  ti.after(16, function() moving = true end) --16
  ti.tween(10, cover, {o = 0}, 'linear') --10
end

function state:update(dt)
  if moving then 
    y = y - 0.03
  end

  if y < -162.31 then
    moving = false
  end
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()
  lg.setColor(pal[1])
  lg.print(credits_txt, 3, round(y), 0, 0.1, 0.1)

  local c = {pal[1][1], pal[1][2], pal[1][3], round(cover.o,1)}
  rectfill(0, 0, 64, 64, c)

love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:keypressed(k)
  if not moving and y < -162.31 then
    gs.switch(s.title)
  end
end

return state