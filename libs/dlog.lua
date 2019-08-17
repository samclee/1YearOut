local dlog = {}
local lg = love.graphics

dlog.__index = dlog

dlog.drawBg = function(self) 
	lg.setColor(0,0,0, 0.75)
	lg.rectangle('fill',self.x, self.y, self.w, self.h)
  lg.setColor(1,1,1)
end

dlog.drawChoices = function(self)
  lg.setFont(self.font)
  local m1, m2 = self.choices[1], self.choices[2]

  if self.cur_choice == 1 then
    m1 = '>' .. m1
  elseif self.cur_choice == 2 then
    m2 = '>' .. m2
  end

  lg.printf(m1, self.x + 1, self.y + 1, 620, 'left', 0, 0.1, 0.1)
  lg.printf(m2, self.x + 1, self.y + 7, 620, 'left', 0, 0.1, 0.1)
end

local function new(font, x, y, w, h)
	local d = {
		font = font,
		x = x,
		y = y,
		w = w,
		h = h,
		
    text = '',
		active = true,
    cur_choice = 1,

    msg = {},
    cur_msg = {},
    cur_time = 0,

    msg_done = false
	}
	return setmetatable(d, dlog)
end

function dlog:setMsg(msg, choices)
  self.msg = self:parse_msg(msg)
  self.cur_msg = {}

  self.msg_done = false 
  self.choices = choices
  self.cur_choice = 1
end

function dlog:parse_msg(msg)
  local colored_txt = {}
  local cur_clr = {1, 1, 1}
  local looking_at_color = false
  local clr_name = ''

  for i = 1, #msg do
    local char = string.sub(msg, i, i)
    if char == '<' then
      looking_at_color = true
      clr_name = ''
    elseif char == '>' then
      looking_at_color = false
      cur_clr = clrs[clr_name]
    elseif looking_at_color then
      clr_name = clr_name .. char
    elseif not looking_at_color then
      add(colored_txt, cur_clr)
      add(colored_txt, char)
    end
  end

  return colored_txt
end

function dlog:setChoice(choice)
  self.cur_choice = choice
end

function dlog:update(dt)
  if not self.active then return end

  self.cur_time = self.cur_time + 1
  if self.cur_time > 2 then
    self.cur_time = 0
    
    if #self.cur_msg < #self.msg then
      self:add_next_char()
    end
  end

  if #self.cur_msg >= #self.msg then
    self.msg_done = true
  end
end

function dlog:add_next_char()
  local last_ind = #self.cur_msg
  if self.msg[last_ind + 2] ~= ' ' then
    sfx.talk:play{volume = 0.5}
  end

  add(self.cur_msg, self.msg[last_ind + 1])
  add(self.cur_msg, self.msg[last_ind + 2])
end

function dlog:draw()
	if not self.active then return end
  self:drawBg()

  if self.choices == nil then -- if regular text
    lg.printf(self.cur_msg, self.x + 1, self.y + 1, 620, 'left', 0, 0.1, 0.1)
  elseif self.choices ~= nil then -- if choice given
    self:drawChoices()
  end
end

return setmetatable({
	new = new
}, {
	__call = function(_, ...) return new(...) end
})