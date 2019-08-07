local state = {}

local cnv = nil

function state:enter(from, config)
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  print_tbl(config)

end



function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()

prt('minigame state')

love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)

end

function state:keypressed(k)
  gs.pop({success = true})
end

return state