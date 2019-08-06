local Destructable = class('Destructable', Sign)

function Destructable:initialize(p)
  Sign.initialize(self, p)
  self.type = p.type
  self.cur_spr = sprites[p.active]
  self.destroyed = sprites[p.destroyed]
  -- should have active and inactive sprites

  self.name = 'Destructable'
end

function Destructable:act(cur_char)
  -- if they're the right type, destroy self
  if cur_char == self.type then
    self.active = false
    self.cur_spr = self.destroyed
  else
    -- if the player is the wrong type, give dialog
    if self.type == 2 then
      gs.push(s.conv, 'ice_obstacle')
    elseif self.type == 3 then
      gs.push(s.conv, 'block_obstacle')
    end
  end
end

function Destructable:draw()
  lg.setColor(1, 1, 1)
  lg.draw(self.cur_spr, self.x, self.y)
end

return Destructable