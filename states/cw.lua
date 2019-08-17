local state = {}
local cnv = nil
local chunks = {
  'Content/trigger warnings:\n\ndepression, anxiety, death mention, environmental apocalypse, feelings of hopelessness,',
  'feelings of powerlessness, self-blame, financial stress, anxiety related to capitalism, stress related to family obligation.',
}
local cur = 1

function state:enter()
  lg.setBackgroundColor(0,0,0)
  cnv = lg.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')

  cur = 1
end

function state:draw()
lg.setCanvas(cnv)
lg.clear()

prt(chunks[cur], 2, 2)

lg.setCanvas()
lg.draw(cnv, 0, 0, 0, 10, 10)
end

function state:keypressed(k)
  if cur < 2 then
    cur = cur + 1
  else
    gs.switch(s.title)
  end
end

return state