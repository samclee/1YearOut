-- Overworld state

local state = {}

local cnv = nil
local cam = {lerping = false, x = 0, y = 0}

local defeated, goal = 0, 0
local cover = {r = 90}
local taking_input = true

local plr = nil
local objs = {}
local cur_plr = 1

function state:enter(from, p)
  print('\n=====\nEntering: ' .. p.map_name )
  self.from = from

  -- set up visuals
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')

  -- set up physics
  self.wld = bump.newWorld()
  self.map = sti('maps/' .. p.map_name .. '.lua', {'bump'})
  self.map:bump_init(self.wld)

  -- entry logic
  defeated = 0
  cover.r = 90
  taking_input = false
  plr = nil
  objs = {}
  cur_plr = 1
  local entry_conv = nil

  -- create objects from map
  for i, obj in pairs(self.map.objects) do
    -- Player obj
    if obj.name == 'Player' then
      plr = Player:new({x = obj.x, y = obj.y})
      self.wld:add(plr, plr.x, plr.y, 8, 8)
      goal = obj.properties.goal
      entry_conv = obj.properties.entry_conv
    -- Sign obj
    elseif obj.type == 'Sign' then
      local tn = obj.name
      local spr_name = obj.properties.spr_name
      local conv_names = gather_convs(tn)
      
      local new_sign = Sign:new({x = obj.x, y = obj.y, 
                                  w = obj.width, h = obj.height, 
                                  conv_names = conv_names,
                                  spr_name = spr_name
                                })
      objs[tn] = new_sign
      self.wld:add(objs[tn], objs[tn].x, objs[tn].y, objs[tn].w, objs[tn].h)

      print('\tcreated sign: \'' .. tn .. '\'')
    -- Destructable (Sign) obj
    elseif obj.type == 'Destructable' then
      local tn = obj.name
      local conv_names = gather_convs(tn)
      
      local new_des = Destructable:new({x = obj.x, y = obj.y, 
                                        w = obj.width, h = obj.height, 
                                        conv_names = conv_names,
                                        type = obj.properties.type,
                                        active = obj.properties.active,
                                        destroyed = obj.properties.destroyed
                                      })
      objs[tn] = new_des
      self.wld:add(objs[tn], objs[tn].x, objs[tn].y, objs[tn].w, objs[tn].h)

      print('\tcreated destructable: \'' .. tn .. '\'')
    -- Exit obj
    elseif obj.type == 'Exit' then
      local tn = obj.name
      local conv_names = gather_convs(tn)


      local new_exit = Exit:new({x = obj.x, y = obj.y, 
                                  w = obj.width, h = obj.height, 
                                  conv_names = conv_names,
                                  })
      objs[tn] = new_exit
      self.wld:add(objs[tn], objs[tn].x, objs[tn].y, objs[tn].w, objs[tn].h)

      print('\tcreated exit: \'' .. tn .. '\'')
    end
  end -- end create objects

  --self.map:removeLayer('myobjects')

  cam.x, cam.y = math.floor((plr.x + 4)/64), math.floor((plr.y + 4)/64)

  -- more entry logic
  ti.tween(0.4, cover, {r = 0}, 'linear', 
    function()
      gs.push(states.conv, entry_conv)
      taking_input = true 
    end)

  print('\tCollect ' .. goal .. ' to exit.')
end

function state:resume(from, ret_cmds)

  -- When the player returns from a state... (probably battle)
  if ret_cmds.success then
    defeated = defeated + 1
  end

  -- When the player returns from a state... (probably conversation)
  -- ...deactivate listed objs
  if ret_cmds.to_destroy then
    for _,name in pairs(ret_cmds.to_destroy) do
      print('Will call destroy from ' .. name)
      objs[name]:set_active(false)
    end
  end

  -- ...change mode of another sign
  if ret_cmds.to_set_mode then
    for name, mode in pairs(ret_cmds.to_set_mode) do
      print('Will set ' .. name .. ' to mode ' .. mode)
      objs[name]:set_mode(mode)
    end
  end

  -- ...start a conversation
  if ret_cmds.conv_name then
    gs.push(states.conv, ret_cmds.conv_name)
  end

  -- ...move to minigame state
  if ret_cmds.minigame then
    --gs.push(states.dungeon, ret_cmds.dungeon_name)
    print('going to a battle I guess')
  end

  -- ...return to overworld and supply these ret_cmds
  if ret_cmds.pop_cmds then
    taking_input = false
    sfx.warp:play({volume = 0.2})
    ret_cmds.pop_cmds.from_dungeon = true
    ti.tween(0.4, cover, {r = 90}, 'in-quart', function() gs.pop(ret_cmds.pop_cmds) end)
  end
end

function state:draw()
love.graphics.setCanvas(cnv)
love.graphics.clear()

  local mx, my = math.floor((plr.x + 4)/64), math.floor((plr.y + 4)/64)
  if not cam.lerping and (cam.x ~= mx or cam.y ~= my) then
    cam.lerping = true
    taking_input = false
    ti.tween(1, cam, {x = mx, y = my}, 'linear', function() cam.lerping = false taking_input = true end)
  end
  -- draw map
  self.map:draw(-64 * cam.x, -64 * cam.y)

  -- camera
  lg.push()
  lg.translate(-64 * cam.x, -64 * cam.y)

  -- draw player
  foreach(objs, function(s) s:draw() end)
  plr:draw()

  lg.pop()

  circfill(32,32,cover.r,pal[4])

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
    local items, len = self.wld:queryRect(cx-4, cy-4,8,8)

    for i = 1, len do
      if items[i].active and items[i].name == 'Sign' then
        items[i]:act()
      elseif items[i].active and items[i].name == 'Destructable' then
        items[i]:act(cur_plr)
      elseif items[i].name == 'Exit' then
        local done = (defeated >= goal)
        items[i]:act(done)
      end
    end
  elseif k == 'x' then
    cur_plr = (cur_plr % 3) + 1
    plr:set_char(cur_plr)
  end
end

return state