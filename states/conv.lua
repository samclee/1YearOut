local state = {}

local cnv = nil
local text_box = nil
local script, dialog, choices = nil, nil, nil
local left_portrait, right_portrait = nil, nil
local left_clr, right_clr = 1, 1

function state:enter(from, script_name)
  self.from = from
  script = scripts[script_name]
  dialog = Ero(script)
    :defineAttributes({
      'left_pic',
      'right_pic',
      'left_dim',
      'right_dim',
      
      'ret_cmds',

      'shk',
      'snd'
    })

  self.ret_cmds = {}

  cnv = love.graphics.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  text_box = dlog(f.sml, 1, 44, 63, 20)

  self:interpret_pkg(dialog:next())
end

function state:interpret_pkg(pkg)
  text_box:setMsg(pkg.msg, pkg.options)

  -- set commands for prev state to run
  if pkg.ret_cmds then
    for k,v in pairs(pkg.ret_cmds) do
      self.ret_cmds[k] = v
    end
  end

  -- set portraits

  -- set sound

  -- set shake
  if pkg.shk then
    shk:shake(0.1)
  end
end

function state:draw()
  self.from:draw()

love.graphics.setCanvas(cnv)
love.graphics.clear()
  shk:apply()
  -- set left color
  lg.setColor(left_clr, left_clr, left_clr)
  -- draw left 

  -- set right color
  lg.setColor(right_clr, right_clr, right_clr)
  -- draw right (flip)

  -- draw text_box
  lg.setColor(1,1,1)
  text_box:draw()


love.graphics.setCanvas()
love.graphics.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)
  text_box:update(dt)
end

function state:keypressed(k)
  if k == 'q' then
    gs.pop()
  elseif k == 'up' then
    text_box.cur_choice = text_box.cur_choice - 1
    if text_box.cur_choice == 0 then
      text_box:setChoice(2)
    end
  elseif k == 'down' then
    text_box.cur_choice = (text_box.cur_choice % 2) + 1
  elseif k == 'z' then
    if text_box.msg_done then
      -- pkg is returned from either select() or next()
      local pkg = nil
      if text_box.choices then
        -- check if that was a selection
        pkg = dialog:select(text_box.choices[text_box.cur_choice])
      else
        -- if not, call next on dialog to get pkg
        pkg = dialog:next()
      end

      -- if return was non-nil, interpret it
      if pkg ~= nil then
        self:interpret_pkg(pkg)
      else -- if it was, pop
        gs.pop(self.ret_cmds)
      end
    else
      -- fill textbox
      text_box.cur_msg = text_box.msg
    end
  end
end

return state