function rect(x,y,w,h,c)
  love.graphics.push()

  love.graphics.setColor(c)
  love.graphics.rectangle('line',x,y,w,h)

  love.graphics.pop()
end

function rectfill(x,y,w,h,c)
  love.graphics.push()

  love.graphics.setColor(c)
  love.graphics.rectangle('fill',x,y,w,h)

  love.graphics.pop()
end

function circ(x,y,r,c)
  love.graphics.push()

  love.graphics.setColor(c)
  love.graphics.ellipse('line',x,y,r)

  love.graphics.pop()
end

function circfill(x,y,r,c)
  love.graphics.push()

  love.graphics.setColor(c)
  love.graphics.ellipse('fill',x,y,r)

  love.graphics.pop()
end

function tri(x,y,s,c)
  local c = c or {love.graphics.getColor()}
  local sr,sg,sb,sa = love.graphics.getColor()

  love.graphics.setColor(c)

  local rtt = math.sqrt(3)
  local v = {x - s/2, y + s/4, x + s/2, y + s/4, x, y - s * (rtt - 0.5)/2}
  love.graphics.polygon('fill',v)

  love.graphics.setColor(sr,sg,sb,sa)
end

function add(tbl, val)
  table.insert(tbl, val)
end

function del(tbl, val)
  for i,v in ipairs(tbl) do
    if v == val then
      table.remove(tbl, i)
    end
  end
end

function foreach(tbl, f)
  for i,e in pairs(tbl) do
    f(e)
  end
end

function spr(s, x, y, flip_x, flip_y)
  local sx, sy = 1, 1
  if flip_x then sx = -1 end
  if flip_y then sy = -1 end
  lg.draw(s, x, y, 0, sx, sy, s:getWidth(), s:getHeight())
end
