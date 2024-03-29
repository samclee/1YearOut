function rect(x,y,w,h,c)
  love.graphics.setColor(c)
  love.graphics.rectangle('line',x,y,w,h)
  love.graphics.setColor(1,1,1)
end

function rectfill(x,y,w,h,c)
  love.graphics.setColor(c)
  love.graphics.rectangle('fill',x,y,w,h)
  love.graphics.setColor(1,1,1)
end

function circ(x,y,r,c)
  love.graphics.setColor(c)
  love.graphics.ellipse('line',x,y,r)
  love.graphics.setColor(1,1,1)
end

function circfill(x,y,r,c)
  love.graphics.setColor(c)
  love.graphics.ellipse('fill',x,y,r)
  love.graphics.setColor(1,1,1)
end

function add(tbl, val)
  table.insert(tbl, val)
end

function del(tbl, i)
  table.remove(tbl, i)
end

function delv(tbl, val)
  for i,v in ipairs(tbl) do
    if v == val then
      table.remove(tbl, i)
    end
  end
end

function prt(str, x, y)
  local x, y = x or 0, y or 0
  love.graphics.printf(str, x, y, 620, 'left', 0, 0.1, 0.1)
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
