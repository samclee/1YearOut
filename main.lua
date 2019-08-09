-- utility
lg = love.graphics
le = love.event
lk = love.keyboard
require 'libs.pico'
function print_tbl(t, depth)
  if t == nil then 
    print('tbl is nil')
    return
  end

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
        green = {0, 1, 0},
        blue = {0, 0, 1},
        white = {1, 1, 1},
      }

local function hexToDec(h)
  local clr = {}
  for i = 2, 6, 2 do
    local hex_num = h:sub(i, i + 1)
    local clr_val = tonumber(hex_num, 16) / 255
    add(clr, clr_val)
  end

  return clr
end

pal = {
  '#f7bef7',
  '#e78686',
  '#7733e7',
  '#2c2c96'
}

for i = 1, #pal do
  pal[i] = hexToDec(pal[i])
end

-- collisions
bump = require 'libs.bump'
sti = require 'libs.sti'

-- assets
a = require('libs.cargo').init('assets')
setmetatable(_G, {
  __index = require('libs.cargo').init('/')
})

-- audio
rpl = require 'libs.ripple'
sfx = {
  talk = rpl.newSound(sounds.move4),
  warp = rpl.newSound(sounds.powerup16),
  menu = rpl.newSound(sounds.move1),
  select = rpl.newSound(sounds.interaction13),

}

bgm = {
  credits = music.birch4,
  minigame = music.birch2,
  overworld = music.birch1,
  dungeonA = music.birch5,
  dungeonB = music.birch7,
  dungeonC = music.birch6
}

for k,v in pairs(bgm) do
  v:setLooping(true)
end

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
statenames = {'title', 'overworld', 'conv', 'dungeon', 'minigame', 'credits'}
for _,n in pairs(statenames) do
  s[n] = require ('states.'.. n)
end

-- ui
dlog = require 'libs.dlog'
f = {}
shk = require 'libs.shack'


-- utility
function gather_convs(tn)
  local cur_conv_names = {}
  if scripts[tn] then
    add(cur_conv_names, tn)
  elseif scripts[tn .. '1'] then
    local i = 1
    while scripts[tn .. tostring(i)] do
      add(cur_conv_names, tn .. tostring(i))
      i = i + 1
    end
  else
    cur_conv_names = {'none'}
  end

  return cur_conv_names
end

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
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

function love.keypressed(k)
  if k == 'escape' then
    le.quit()
  elseif k == 'r' then
    le.quit('restart')
  end
end