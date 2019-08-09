-- Title

local state = {}
local cnv = nil
local base_y, base_x, spacing= 42, 9, 6
local selection = 1
local taking_input = true
local selection_fns = {
  function()
    gs.switch(s.overworld)
  end,

  function()
    gs.push(s.credits, {final = true})
  end,

  function()
    le.quit()
  end
}
local cover = {o = 0}

function state:enter()
  lg.setBackgroundColor(pal[1])
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')

  selection = 1
  cover = {o = 0}
  taking_input = true
end

function state:resume()
  lg.setBackgroundColor(pal[1])
  taking_input = true
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()
  
  lg.setColor(pal[4])
  lg.print('start\ncredits\nexit', base_x, base_y, 0, 0.1, 0.1)

  lg.print('*', base_x - 4, base_y + (selection - 1) * spacing, 0, 0.1, 0.1)

  local c = {pal[4][1], pal[4][2], pal[4][3], round(cover.o,1)}
  rectfill(0, 0, 64, 64, c)

love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)

end

function state:keypressed(k)
  if not taking_input then return end
  if k == 'up' then
    selection = math.max(selection-1, 1)
    sfx.menu:play({volume=1})
  elseif k == 'down' then
    selection = math.min(selection+1, 3)
    sfx.menu:play({volume=1})
  elseif k == 'z' then
    sfx.select:play({volume=1})
    taking_input = false
    if selection == 1 then
      ti.tween(0.5, cover, {o = 1}, 'linear', function() selection_fns[selection]() end)
    else
      selection_fns[selection]()
    end
  end
end

return state