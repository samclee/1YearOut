-- Overworld state

local state = {}

local cnv = nil
local cam = {lerping = false, x = 0, y = 0}

local goal = {}
local cover = {r = 90, clr = pal[4]}
local taking_input = true

local plr = nil
local objs, obstacles = {}, {}
local music_on = true

function state:enter(from, p)
  print('\n=====\nEntering: ' .. p.map_name )
  self.from = from
  self.map_name = p.map_name

  -- set up visuals
  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')

  -- set up physics
  self.wld = bump.newWorld()
  self.map = sti('maps/' .. p.map_name .. '.lua', {'bump'})
  self.map:bump_init(self.wld)

  -- entry logic
  cover.r = 90
  taking_input = false
  plr = nil
  objs, obstacles, goal = {}, {}, {}
  cur_plr = 1
  local entry_conv = nil

  -- create objects from map
  for i, obj in pairs(self.map.objects) do
    -- Player obj
    if obj.name == 'Player' then
      plr = Player:new({x = obj.x, y = obj.y})
      self.wld:add(plr, plr.x, plr.y, 8, 8)
      local goal_num = obj.properties.goal
      for i = 1, goal_num do
        add(goal, false)
      end

      entry_conv = obj.properties.entry_conv
      music_on = false--not obj.properties.music_off
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
      add(obstacles, new_des)
      self.wld:add(new_des, new_des.x, new_des.y, new_des.w, new_des.h)

      --print('\tcreated destructable: \'' .. tn .. '\'')
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
    elseif obj.type == 'StepTrigger' then
      local tn = obj.name
      local conv_names = gather_convs(tn)
      
      local new_step_trigger = StepTrigger:new({x = obj.x, y = obj.y,
                                                w = obj.width, h = obj.height,
                                                conv_name = conv_names[1],
                                                inactive = obj.properties.inactive
                                              })
      objs[tn] = new_step_trigger
    end
  end -- end create objects

  --self.map:removeLayer('myobjects')

  cam.x, cam.y = math.floor((plr.x + 4)/64), math.floor((plr.y + 4)/64)

  -- more entry logic
  ti.tween(0.6, cover, {r = 0}, 'linear', 
    function()
      gs.push(states.conv, entry_conv)
      taking_input = true 
    end)

  print('\tInspect ' .. #goal .. ' to exit.')

  if music_on then bgm[p.map_name]:play() end
end

function state:resume(from, ret_cmds)
  if music_on then bgm[self.map_name]:play() end

  -- When the player returns from a state... (probably battle)
  if ret_cmds.success then

    ti.tween(0.3, cover, {r = 0}, 'linear', 
    function()
      -- ...start a conversation
      if ret_cmds.conv_name then
        gs.push(states.conv, ret_cmds.conv_name)
      end
      taking_input = true 
    end)
  end

  if ret_cmds.seen then
    goal[ret_cmds.seen] = true
    print('\tInspected: ' .. ret_cmds.seen)
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
    taking_input = false
    sfx.warp:play({volume = 0.5})
    cover.clr = pal[1]
    ti.tween(0.6, cover, {r = 90}, 'linear', 
      function() 
        if music_on then bgm[self.map_name]:pause() end
        gs.push(states.minigame, ret_cmds.minigame)
      end)
  end

  -- ...return to overworld and supply these ret_cmds
  if ret_cmds.pop_cmds then
    taking_input = false
    sfx.warp:play({volume = 0.5})
    ret_cmds.pop_cmds.from_dungeon = true
    cover.clr = pal[4]
    ti.tween(0.6, cover, {r = 90}, 'linear', 
      function() 
        if music_on then bgm[self.map_name]:stop()  end
        gs.pop(ret_cmds.pop_cmds) 
      end)
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
  foreach(obstacles, function(s) s:draw() end)
  plr:draw()

  lg.pop()

  circfill(32,32,cover.r,cover.clr)

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

  foreach(objs, function(s) s:update(plr.x, plr.y, plr.w, plr.h) end)

  plr:update(dt)
end

function state:keypressed(k)
  if not taking_input then return end
  if k == 'z' then
    local cx, cy = plr.x + 4 + plr.facing.x * 8, plr.y + 4 + plr.facing.y * 8
    local items, len = self.wld:queryPoint(cx, cy)

    for i = 1, len do
      if items[i].active and items[i].name == 'Sign' then
        items[i]:act()
        break
      elseif items[i].active and items[i].name == 'Destructable' then
        --items[i]:act(cur_plr)
        items[i]:destruct()
        break
      elseif items[i].name == 'Exit' then
        local done = true
        for i,v in pairs(goal) do
          done = done and v
        end

        items[i]:act(done)
        break
      end
    end
  elseif k == 'x' then
    
  end
end

return state