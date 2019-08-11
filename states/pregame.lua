local state = {}
local cnv = nil

function state:enter()
  lg.setBackgroundColor(pal[4])
  cnv = lg.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  gs.push(states.conv, 'school_entry')
end

function state:resume()
  gs.switch(s.overworld)
end


function state:draw()
lg.setCanvas(cnv)
lg.clear()


lg.setCanvas()
lg.draw(cnv, 0, 0, 0, 10, 10)
end

return state