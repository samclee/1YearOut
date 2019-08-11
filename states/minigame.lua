local state = {}

-- game vars can go up here with 'local'
local cnv = nil

function state:enter(from, config)
  cnv = lg.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  print_tbl(config)


  -- ...or in here with 'self.'

  bgm.minigame:play()
end


function state:draw()
lg.setCanvas(cnv)
lg.clear()

-- game drawing goes here
prt('minigame state') -- function that prints stuff
prt('press any key to end', 0, 10) -- function that prints stuff

lg.setCanvas()
lg.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)
-- game update goes here
end

function state:keypressed(k)


  bgm.minigame:stop()
  gs.pop({success = true})

end

return state