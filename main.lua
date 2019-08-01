-- utility
lg = love.graphics
le = love.event
lk = love.keyboard
require 'libs.pico'
function print_tbl(t, depth)
  local d = depth or 0
  for k,v in pairs(t) do
    local pre = ''
    for i = 0, d do
      pre = pre .. '\t'
    end
    if type(v) == 'table' then 
      print(pre .. '\'' .. k .. '\' : {')
      print_tbl(v, d + 1)
      print(pre .. '}')
    else
      print(pre .. '\'' .. k .. '\' :\t[' .. v .. ']')
    end
  end
end
ti = require 'libs.timer'

function tbl_len(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
vec = require 'libs.vector'

clrs = {
        red = {1, 0, 0},
        grn = {0, 1, 0},
        blu = {0, 0, 1},
        wht = {1, 1, 1}
      }

-- collisions
bump = require 'libs.bump'
sti = require 'libs.sti'

-- assets
a = require('libs.cargo').init('assets')
setmetatable(_G, {
  __index = require('libs.cargo').init('/')
})

-- animations
a8 = require 'libs.anim8'
an = {}
char_grid = a8.newGrid(8, 8, 
                        sprites.mall_kids_sheet:getWidth(),
                        sprites.mall_kids_sheet:getHeight())
an.a_idle = a8.newAnimation(char_grid(1,1), 1)
an.a_walk = a8.newAnimation(char_grid('2-3',1), 0.3)
an.b_idle = a8.newAnimation(char_grid(1,2), 1)
an.b_walk = a8.newAnimation(char_grid('2-3',2), 0.3)
an.c_idle = a8.newAnimation(char_grid(1,3), 1)
an.c_walk = a8.newAnimation(char_grid('2-3',3), 0.3)

-- classes
class = require 'libs.middleclass'
Player = require 'classes.Player'
Sign = require 'classes.Sign'
Destructable = require 'classes.Destructable'
Exit = require 'classes.Exit'

-- conversations
scripts = require 'scripts'
Ero = require 'libs.erogodic'()

-- gamestates
gs = require 'libs.gamestate'
s = {}
statenames = {'title', 'overworld', 'conv', 'dungeon', 'credits', 'menu1'}
for _,n in pairs(statenames) do
  s[n] = require ('states.'.. n)
end

-- ui
dlog = require 'libs.dlog'
f = {}
shk = require 'libs.shack'

colors = {
    orange = {1, 0.553, 0},
    aqua = {0.353, 1, .929},
    white = {1, 1, 1},
    black = {0, 0, 0},
    red = {0.937, 0.263, 0.263},
    green = {0.263, 0.937, 0.263},
    blue = {0.263, 0.263, 0.937}
}

-- logic
function gather_convs(tn)
  if tn == nil then return {'none'} end

  local cur_conv_names = {}
  if scripts[tn] then
    add(cur_conv_names, tn)
  else
    local i = 1
    while scripts[tn .. tostring(i)] do
      add(cur_conv_names, tn .. tostring(i))
      i = i + 1
    end
  end

  return cur_conv_names
end



function love.load()
  f.sml = fonts.p8(50)
  f.sml:setLineHeight(1.2)

  lg.setFont(f.sml)
  lg.setLineStyle('rough')

  gs.registerEvents()
  gs.switch(s.title)
end

function love.update(dt)
  ti.update(dt)
  shk:update(dt)
end

function love.draw()

end

function love.keypressed(k)
  if k == 'escape' then
    le.quit()
  elseif k == 'r' then
    le.quit('restart')
  end
end