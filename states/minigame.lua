local state = {}
local p = {x = 8, y = 56}
local can_move = true
local move_timer = 0
local move_dir = 2
local prev_move_dir = -1
local board_1 = {{0,0,0,0,1},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0}, {0,0,0,1,0}}
local board_2 = {{0,1,0,0,0},{0,0,0,0,0},{0,0,0,0,1},{1,0,0,0,0}, {0,0,0,0,0}}
local board_3 = {{0,0,0,1,0},{0,0,0,0,0},{0,0,0,0,1},{0,0,0,0,0}, {0,0,0,0,0}}
local board_4 = {{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0}, {0,0,0,0,0}}
local final_x = 0
local final_y = 0
local flp_x = false
local flp_y = false
local rot_front = 0.0
local cur_sprite = 'plant_start'
-- game vars can go up here with 'local'
local cnv = nil

function state:enter(from, config)
  cnv = lg.newCanvas(64,64)
  cnv:setFilter('nearest', 'nearest')
  exit_conv = config.str
  b = config.level
  if(b == 1) then
  board = board_1
  final_x = 4
  final_y = 1
  elseif(b==2) then
  final_x = 3
  final_y = 1
  board = board_2
  elseif(b==3) then
  final_x = 4
  final_y = 2
  board = board_3
  elseif(b==4) then
  final_x = 3
  final_y = 3
  board = board_4
  end
  --print_tbl(config)
  -- ...or in here with 'self.'
  bgm.minigame:play()
  p.x =8
  p.y = 56
  can_move = true
  move_dir = 2
  start_win = false 
   cur_sprite = 'plant_start'
end



function state:draw()
lg.setCanvas(cnv)
lg.clear()
lg.setColor(0,0,0)
love.graphics.rectangle('fill',0,0,64,64)
-- game drawing goes here
love.graphics.setColor(171/255,123/255,120/255)
love.graphics.line(2,2,62,2)
love.graphics.line(2,62,62,62)
love.graphics.line(2,2,2,62)
love.graphics.line(62,2,62,62)
love.graphics.line(14,2,14,62)
love.graphics.line(26,2,26,62)
love.graphics.line(38,2,38,62)
love.graphics.line(50,2,50,62)
love.graphics.line(2,14,62,14)
love.graphics.line(2,26,62,26)
love.graphics.line(2,38,62,38)
love.graphics.line(2,50,62,50)

love.graphics.setColor(1.0,1.0,1.0)

--spr(spr_num,p.x-3, p.y-3, 1.0,1.0,flp_y, flp_x)

for i =1,5 do
	for j = 1, 5 do
	x = board[i][j]
		if(x == 0) then
			new_j = ((j-1) * 12) +2
			new_i = ((i-1)*12)+2	
		lg.draw(sprites["panel_bg"],((j-1) * 12) +2,((i-1)*12)+2, 0, 1.4, 1.4)
		end
		
		if(x == 1) then
			new_j = ((j-1) * 12) +2
			new_i = ((i-1)*12)+2	
		lg.draw(sprites["block"],((j-1) * 12) +2,((i-1)*12)+2, 0, 1.4, 1.4)
				
		end	
		if(x ==2) then
		lg.draw(sprites["vertical_plant"],((j-1) * 12) +2,((i-1)*12)+2, 0, 1.4, 1.4)
		--spr(3,((j-1) * 12) +4,((i-1)*12)+4, 1.0, 1.5)	 
		end
		if(x ==3) then
		lg.draw(sprites["vertical_plant"],((j-1) * 12) +2,((i-1)*12)+2, math.rad(90), 1.4, 1.4, 0.0, 8.0)

		--spr(4,((j-1) * 12) +4,((i-1)*12)+4, 1.0, 1.5)	 
		end
		if(x ==4) then
		lg.draw(sprites["plant_corner"],((j-1) * 12) +2,((i-1)*12)+2, 0, 1.4, -1.4, 0.0, 8.0)

		--spr(5,((j-1) * 12) +4,((i-1)*12)+4, 1.0, 1.5)	 
		end
		if(x ==5) then
		lg.draw(sprites["plant_corner"],((j-1) * 12) +2,((i-1)*12)+2, 0, 1.4, 1.4, 0.0, 0.0)

		--spr(5,((j-1) * 12) +4,((i-1)*12)+4, 1.0, 1.5, false, true)	 
		end
		if(x ==6) then
		lg.draw(sprites["plant_corner"],((j-1) * 12) +2,((i-1)*12)+2, 0, -1.4, 1.4, 8.0, 0.0)

		--spr(5,((j-1) * 12) +4,((i-1)*12)+4, 1.0, 1.5, true, true)	 
		end
		if(x ==7) then
		lg.draw(sprites["plant_corner"],((j-1) * 12) +2,((i-1)*12)+2, 0, -1.4, -1.4, 8.0, 8.0)

		--spr(5,((j-1) * 12) +4,((i-1)*12)+4, 1.0, 1.5, true, false)	 
		end
		
		
	end
end

	
	lg.draw(sprites["heart"],((final_x-1) * 12) +2,((final_y-1)*12)+2, 0, 1.4, 1.4)
				
if(move_dir == 1) then
rot_front = math.rad(90)
lg.draw(sprites[cur_sprite],p.x-6,p.y-6, rot_front, 1.4, 1.4, 0.0, 8.0 )
end

if(move_dir == 0) then
rot_front = math.rad(270)
lg.draw(sprites[cur_sprite],p.x-6,p.y-6, rot_front, 1.4, 1.4, 8.0, 0.0 )
end

if(move_dir == 2) then
rot_front = 0.0
lg.draw(sprites[cur_sprite],p.x-6,p.y-6, rot_front, 1.4, 1.4 )
end

if(move_dir == 3) then
rot_front = math.rad(180)
lg.draw(sprites[cur_sprite],p.x-6,p.y-6, rot_front, 1.4, 1.4 , 8.0, 8.0)
end


lg.setCanvas()
lg.draw(cnv, 0, 0, 0, 10, 10)
end

function state:update(dt)

if(start_win)then

if(win_timer >= 120) then
bgm.minigame:stop()
gs.pop({success = true, conv_name = exit_conv})

elseif(win_timer % 30 == 0)then
	if(cur_sprite == "plant")then 
	cur_sprite = "plant_2"
	else
	cur_sprite = "plant"
	end
	win_timer = win_timer + 1
else
win_timer = win_timer + 1
end


elseif(math.floor(((p.y -6) /12) +1) == final_y and math.floor((p.x - 6) /12 +1) == final_x) then

	if(empty_grid()) then
	--enter win state
	
	start_win = true
	win_timer = 0
	move_dir = 2
	cur_sprite = "plant"
	end

end
-- game update goes here
if not(can_move) then
	if move_dir == 1 then
		if(move_check()) then
		if(move_timer >= 20) then
		p.x = p.x+ 12
		move_timer = 0
		end
		move_timer =move_timer+ 1
		end
	end

if move_dir == 0 then
		if(move_check())then
		if(move_timer >=20) then
		p.x =p.x- 12
		move_timer = 0
		end
		move_timer =move_timer+ 1
		end
	end
	
	if move_dir == 2 then
		if(move_check())then
		if(move_timer >=20) then
		p.y =p.y- 12
		move_timer = 0
		end
		move_timer =move_timer+ 1
		end
	end
	
	
		if move_dir == 3 then
		if(move_check())then
		if(move_timer >=20) then
		p.y =p.y+ 12
		move_timer = 0
		end
		move_timer =move_timer+ 1
		end
	end
	
	
	
end
end
function reset()
if(b == 1) then
  board = {{0,0,0,0,1},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0}, {0,0,0,1,0}}
  final_x = 4
  final_y = 1
  elseif(b==2) then
  final_x = 3
  final_y = 1
  board = {{0,1,0,0,0},{0,0,0,0,0},{0,0,0,0,1},{1,0,0,0,0}, {0,0,0,0,0}}
  elseif(b==3) then
  final_x = 4
  final_y = 2
  board = {{0,0,0,1,0},{0,0,0,0,0},{0,0,0,0,1},{0,0,0,0,0}, {0,0,0,0,0}}
  elseif(b==4) then
  final_x = 3
  final_y = 3
  board = {{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0}, {0,0,0,0,0}}
  end
  --print_tbl(config)
  -- ...or in here with 'self.'
  p.x =8
  p.y = 56
  can_move = true
  move_dir = 2
  cur_sprite = "plant_start"
end

function state:keypressed(k)
	
	if(k == 'z') then
	reset()
	end
	
	if can_move then
		if(k == 'left') then
			can_move = false
			move_dir = 0
			move_timer = 0
			if(move_check()) then
				p.x=p.x-12
			end
		elseif(k == 'right') then
			can_move = false
			move_dir = 1
			move_timer = 0
			if(move_check()) then
				p.x=p.x+12
			end
		elseif(k == 'up') then
			can_move = false
			move_dir = 2
			move_timer = 0
			if(move_check()) then
				p.y=p.y-12
			end
		elseif(k == 'down') then
			can_move = false
			move_dir = 3
			move_timer = 0
			if(move_check()) then
				p.y=p.y+12
			end
		end
	end

	
--bgm.minigame:stop()
--gs.pop({success = true})


end


function move_check()


if move_dir == 1 then
	if(p.x +12 <= 62) and (board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+2)] == 0) then
		if(prev_move_dir == 2) then
		
		board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 4
		elseif(prev_move_dir == 3)then
		board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 5
		else
		board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 3
		end
		prev_move_dir = move_dir
		return true
	end
end

if move_dir == 0 then
	if(p.x -12 >=7) and (board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12))] == 0)then
	
	if(prev_move_dir ==2)then
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 7
	elseif(prev_move_dir == 3)then
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 6
	else 
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 3
	end
	
	prev_move_dir = move_dir
		return true
	end
end

if move_dir == 2 then
	if(p.y - 12 >=7) and (board[math.floor(((p.y -6) /12))][math.floor((((p.x)-6)/12)+1)] == 0) then
	
	if(prev_move_dir == 0) then
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 5
	elseif(prev_move_dir == 1) then
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 6
	else
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 2
	end
	
	prev_move_dir = move_dir
		return true
	end
end

if move_dir == 3 then
	if(p.y + 12 <=62) and (board[math.floor(((p.y -6) /12) +2)][math.floor((((p.x)-6)/12)+1)] == 0)then
	
	if(prev_move_dir == 0) then
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 4
	elseif(prev_move_dir ==1) then
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 7
	else
	board[math.floor(((p.y -6) /12) +1)][math.floor((((p.x)-6)/12)+1)] = 2
	end
	
	
	prev_move_dir = move_dir
		return true
	end
end

can_move = true

return false

end

function empty_grid()

for i = 1,5 do
for j = 1,5 do
if(board[i][j] == 8 or board[i][j] == 9 or board[i][j] == 10 or board[i][j] == 11 or board[i][j] == 12) then
return false 
end 
end
end
return true 
end
return state