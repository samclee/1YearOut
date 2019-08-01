-- Title

local state = {}
local cnv = nil
local base_y, base_x, spacing = 36, 9, 6
local selection = 1
local selection_fns = {
  function()
    gs.switch(s.overworld, {map_name = 'testdungeon'})
  end,

  function()
    
  end,

  function()

  end,

  function()
    le.quit()
  end
}

function state:enter()
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()
  
  lg.print('start', base_x, base_y, 0, 0.1, 0.1)
  lg.print('credits', base_x, base_y +  spacing, 0, 0.1, 0.1)
  lg.print('options', base_x, base_y + 2 * spacing, 0, 0.1, 0.1)
  lg.print('exit', base_x, base_y + 3 * spacing, 0, 0.1, 0.1)
  lg.print('*', base_x - 4, base_y + (selection - 1) * spacing, 0, 0.1, 0.1)

love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)

end

function state:keypressed(k)
  if k == 'up' then
    selection = selection - 1
    if selection == 0 then selection = 4 end
  elseif k == 'down' then
    selection = (selection % 4) + 1
  elseif k == 'z' then
    selection_fns[selection]()
  end
end

return state