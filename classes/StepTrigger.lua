local StepTrigger = class('StepTrigger')

function StepTrigger:initialize(p)
  -- dependent
  self.x = p.x
  self.y = p.y
  self.w = p.w
  self.h = p.h

  self.active = not p.inactive
  self.conv_name = p.conv_name
end

function StepTrigger:update(px, py, pw, ph)
  if self.active and aabb(self.x, self.y, self.w, self.h, px, py, pw, ph) then
    self.active = false
    gs.push(states.conv, self.conv_name)
    --print(self.conv_name)
  end
end

function StepTrigger:draw()

end

function StepTrigger:set_active(a)
  self.active = a
end

return StepTrigger