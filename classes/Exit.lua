local Exit = class('Exit')

function Exit:initialize(p)
  -- dependent
  self.x = p.x
  self.y = p.y
  self.w = p.w
  self.h = p.h
  self.conv_names = p.conv_names
  self.spr = sprites['portal']
  self.active = true

  -- hard code
  self.name = 'Exit'
end

function Exit:update()

end

function Exit:draw()
  lg.setColor(1,1,1)
  lg.draw(self.spr, self.x, self.y)
end


function Exit:act(done)
  -- Exits just say something
  if done then
    gs.push(s.conv, self.conv_names[2])
  else
    gs.push(s.conv, self.conv_names[1])
  end
end

return Exit