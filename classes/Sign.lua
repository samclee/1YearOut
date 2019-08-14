local Sign = class('Sign')

function Sign:initialize(p)
  -- dependent
  self.x = p.x
  self.y = p.y
  self.w = p.w
  self.h = p.h
  self.conv_names = p.conv_names

  if p.spr_name then
    self.spr = sprites[p.spr_name]
  else
    self.spr = nil
  end

  if p.inactive then
    self.active = false
  else
    self.active = true
  end

  -- hard code
  self.name = 'Sign'
  self.mode = 1
end

function Sign:draw()
  if self.active and self.spr then
    lg.setColor(1,1,1)
    lg.draw(self.spr, self.x, self.y)
  end
end

function Sign:set_mode(m)
  self.mode = m
end

function Sign:set_active(a)
  self.active = a
end

function Sign:act()
  -- signs just say something
  gs.push(s.conv, self.conv_names[self.mode])
end

return Sign