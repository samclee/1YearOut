local Player = class('Player')

function Player:initialize(p)
  self.x = p.x
  self.y = p.y
  
  self.w = 8
  self.h = 8
  self.name = 'Player'
  self.facing = {x = -1, y = 0}
  self.look_dir = -1
  self.spd = 0.5
  self.cur_char = 1
  self.idle_anims = {an.a_idle, an.b_idle, an.c_idle}
  self.walk_anims = {an.a_walk, an.b_walk, an.c_walk}
  self.cur_anim = self.idle_anims[1]
  self.moving = false

  self.filter = function(item, other)
    if other.active == false then
      return 'cross'
    end
    return 'slide'
  end
end

function Player:update(dt)
  if self.moving then
    self.cur_anim = self.walk_anims[self.cur_char]
  else
    self.cur_anim = self.idle_anims[self.cur_char]
  end

  self.cur_anim:update(dt)
end

function Player:draw()
  lg.setColor(1,1,1)
  self.cur_anim:draw(sprites.mall_kids_sheet, 
                                      math.floor(self.x)+4, math.floor(self.y)+4,
                                      0,-self.look_dir,1,4,4)
  --[[lg.setColor(0,1,0)
  lg.points(self.x + 4 + self.facing.x * 10, self.y + 4 + self.facing.y * 10)
  lg.setColor(1,1,1)]]
end

function Player:set_char(n)
  self.cur_char = n
end

return Player