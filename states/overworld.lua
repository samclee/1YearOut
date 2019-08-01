-- Overworld state

local state = {}

local cnv = nil
local cam = {lerping = false, x = 0, y = 0}

local cover = {r = 0}
local taking_input = true

local plr = nil
local signs = {}

function state:enter(from)
  print('\n----------------------\nGAME START\n----------------------\nEntering Overworld')
  self.from = from
  
  -- set up visuals
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  cam = {lerping = false, x = 0, y = 0}
  cover = {r = 0}
  taking_input = true

  -- set up physics
  self.wld = bump.newWorld()
  self.map = sti('maps/testmap.lua', {'bump'})
  self.map:bump_init(self.wld)

  -- create objects from map
  plr = nil
  signs = {}
  for i, obj in pairs(self.map.objects) do
    -- Player obj
    if obj.name == 'Player' then
      plr = Player:new({x = obj.x, y = obj.y})
      self.wld:add(plr, plr.x, plr.y, 8, 8)
    -- Sign obj
    elseif obj.name == 'Sign' then
      local tn = obj.properties.true_name
      local spr_name = obj.properties.spr_name
      local conv_names = gather_convs(tn)

      local new_sign = Sign:new({x = obj.x, y = obj.y, 
                                  w = obj.width, h = obj.height, 
                                  conv_names = conv_names,
                                  spr_name = spr_name
                                })
      signs[tn] = new_sign
      self.wld:add(signs[tn], signs[tn].x, signs[tn].y, signs[tn].w, signs[tn].h)

      print('\tcreated sign: \'' .. tn .. '\'')
    end
  end -- end create objects

  cam.x, cam.y = math.floor((plr.x + 4)/64), math.floor((plr.y + 4)/64)
end

function state:resume(from, ret_cmds)

  -- When the player returns from a state... (probably dungeon)
  if ret_cmds.from_dungeon then
    print('=====\nResumed Overworld')
    -- ...check if it was from a dungeon
    ti.tween(0.6, cover, {r = 0}, 'linear', 
      function()
        -- ...start a conversation
        if ret_cmds.conv_name then
          gs.push(states.conv, ret_cmds.conv_name)
        end
        taking_input = true 
      end)
  else
    if ret_cmds.conv_name then
      gs.push(states.conv, ret_cmds.conv_name)
    end
  end

  -- When the player returns from a state... (probably conversation)
  -- ...deactivate listed Signs
  if ret_cmds.to_destroy then
    for _,name in pairs(ret_cmds.to_destroy) do
      signs[name]:set_active(false)
      print('\tdestroyed: \'' .. name .. '\'')
    end
  end

  -- ...change mode of another sign
  if ret_cmds.to_set_mode then
    for name, mode in pairs(ret_cmds.to_set_mode) do
      signs[name]:set_mode(mode)
      print('\tset: \'' .. name .. '\' to mode: [' .. tostring(mode) .. ']')
    end
  end

  -- ...move to dungeon state
  if ret_cmds.dungeon_name then
    taking_input = false
    ti.tween(0.6, cover, {r = 90}, 'in-quart', function() gs.push(states.dungeon, {map_name = ret_cmds.dungeon_name}) end)
  end
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()

  -- screen movement
  local mx, my = math.floor((plr.x + 4)/64), math.floor((plr.y + 4)/64)
  if not cam.lerping and (cam.x ~= mx or cam.y ~= my) then
    cam.lerping = true
    taking_input = false
    ti.tween(1, cam, {x = mx, y = my}, 'linear', function() cam.lerping = false  taking_input = true end)
  end
  -- draw map
  self.map:draw(-64 * cam.x, -64 * cam.y)

  -- camera
  lg.push()
  lg.translate(-64 * cam.x, -64 * cam.y)

  -- draw player and signs
  foreach(signs, function(s) s:draw() end)
  plr:draw()

  lg.pop()

  lg.setColor(1,1,1)
  lg.ellipse('fill',32,32,cover.r)


love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)
  if not taking_input then return end
  local dx,dy=0,0
  local moving = false
  if lk.isDown('left') then dx = dx - 1 end
  if lk.isDown('right') then dx = dx + 1 end

  if dx ~= 0 then
    plr.facing = {x = dx, y = 0}
    plr.look_dir = dx
  else
    if lk.isDown('up') then dy = dy - 1 end
    if lk.isDown('down') then dy = dy + 1 end

    if dy ~= 0 then
      plr.facing = {x = 0, y = dy}
    end
  end

  plr.x, plr.y = self.wld:move(plr, plr.x + dx * plr.spd, plr.y + dy * plr.spd, plr.filter)
  plr.moving = dx ~= 0 or dy ~= 0
  plr:update(dt)
end

function state:keypressed(k)
  if not taking_input then return end
  if k == 'z' then
    local cx, cy = plr.x + 4 + plr.facing.x * 10, plr.y + 4 + plr.facing.y * 10
    local items, len = self.wld:queryPoint(cx, cy)

    for i = 1, len do
      if items[i].active then
        items[i]:act()
      end
    end
  end
end

return state