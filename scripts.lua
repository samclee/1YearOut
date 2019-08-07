local scripts = {}

scripts.none = function()
  msg 'no script found for true name'
end

-- Overworld
scripts.school_entry = function()
  msg '.......'
  msg 'time for some adventure i guess'
end

scripts.school_exit1 = function()
  msg 'i still have stuff to take care of'
end

scripts.school_exit2 = function()
  msg 'you beat the game'
  msg 'go to credits here'
end

scripts.charlie1 = function()
  ret_cmds({dungeon_name = 'dungeonA'})
  msg 'i am charlie'
  msg 'going to my dungeon'
end

scripts.bryan1 = function()
  ret_cmds({dungeon_name = 'dungeonB'})
  msg 'i am bryan'
  msg 'going to my dungeon'
end

scripts.grace1 = function()
  ret_cmds({dungeon_name = 'dungeonC'})
  msg 'idk what should go here'
  msg 'going to grace dungeon'
end

scripts.charlie_complete = function()
  ret_cmds({to_destroy = {'charlie'}})
  msg 'helped charlie, good job'
  msg 'they\'ll join you now'
end

scripts.bryan_complete = function()
  ret_cmds({to_destroy = {'bryan'}})
  msg 'helped bryan, nice'
  msg 'he\'ll join you too'
end

scripts.grace_complete = function()
  ret_cmds({to_destroy = {'grace'}, to_set_mode = {school_exit = 2}})
  msg 'finished last boss'
  msg 'okay go leave'
end

scripts.keyA = function()

end

scripts.doorA = function()

end

scripts.doorB = function()

end

-- flavor objects
scripts.chairs =  function()
  msg 'Most of the seats are empty.'
  msg 'some hold noisemakers and posters.'
  msg 'check poster?'
  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'The posters display generic messages like'
    msg '\'Congrats!\', or \'You made it!\''
  end
end

scripts.chairs2 = function()
  msg 'Some graduation caps sit neatly on the chairs,'
  msg 'waiting for their owners to return.'
end

scripts.airhorn = function()
  msg 'a noisemaker used at celebrations.'
  msg 'use noisemaker?'
  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'it lets out a pitiful wheeze.'
  end
end

scripts.cap = function()
  msg 'a cap lies on the ground.'
  msg 'likely abandoned after'
  msg 'everyone tossed their caps into the air.'
end

-- dungeonA
scripts.entryA = function()
  msg 'Arrived in charlie\'s head'
  msg 'help them with their probs (2)'
end

scripts.exitA1 = function()
  msg 'charlie\'s still got some stuff'
end

scripts.exitA2 = function()
  ret_cmds({pop_cmds = {conv_name = 'charlie_complete'}})
  msg 'charlie is good to go'
end

scripts.charlie_enemyA = function()
  ret_cmds({minigame = {'foo', 'bar'}})
  msg 'sup, i\'m an enemy encounter'
end

-- dungeonB
scripts.entryB = function()
  msg 'Arrived in bryan\'s head'
  msg 'help him with his probs (3)'
end

scripts.exitB1 = function()
  msg 'bryan\'s still got some stuff'
end

scripts.exitB2 = function()
  ret_cmds({pop_cmds = {conv_name = 'bryan_complete'}})
  msg 'bryan is good to go'
end

scripts.bryan_enemyA = function()
  ret_cmds({minigame = {'foo', 'bar'}})
  msg 'sup, i\'m an enemy encounter'
end

scripts.ice_obstacle = function()
  msg 'hm, charlie can help with this.'
end

-- dungeonC
scripts.entryC = function()
  msg 'Arrived in grace\'s head'
  msg 'help her with his probs (3)'
end

scripts.exitC1 = function()
  msg 'grace\'s still got some stuff'
end

scripts.exitC2 = function()
  ret_cmds({pop_cmds = {conv_name = 'grace_complete'}})
  msg 'grace is good to go'
end



















scripts.a1 = function()
  shk(true)
  ret_cmds({to_set_mode = {a = 2}, conv_name = 'e'})
  msg 'This is a quiz'

  shk(false)
  option 'A'
  option 'B'
  menu 'not seen'
  if selection 'A' then
    ret_cmds({conv_name = 'ret2'})
    msg 'You chose A'
  elseif selection 'B' then
    msg 'You chose B'
  end
  msg 'end'
end

scripts.a2 = function()
  msg 'This one should be accessed after talking to the other person'
end

scripts.b1 = function()
  ret_cmds({to_set_mode = {a = 2}})
  msg 'This should change the convo of person to the left'
end

scripts.c = function()
  ret_cmds({to_destroy = {'e'}})
  msg 'Do you mean to tell me...'
  msg 'The <red>murderer<white>...'
  shk(true)
  msg 'was <red>me<white>?!?!'
end

scripts.d = function()
  ret_cmds({conv_name = 'ret2'})
  msg 'Start <red>ano<white>ther <red>after.'
end

scripts.ret2 = function()
  msg 'This one specifically'
end

scripts.e = function()
  msg 'This should be destroyed if you talk'
end

scripts.block_a = function()
  msg 'Try another'
end

scripts.pointgiver = function()
  ret_cmds({success = true})
  msg 'Here, have a point'
end

scripts.warpguy = function()
  ret_cmds({dungeon_name = 'dungeonA'})
  msg 'Warping to test dungeon'
end

scripts.exitguy1 = function()
  msg 'I\'ll take you <green>back<white> when <blue>points<white>.'
end

scripts.exitguy2 = function()
  ret_cmds({pop_cmds = {conv_name = 'exit3'}})
  msg 'Exiting to overworld'
end

scripts.exit3 = function()
  msg 'How was your trip'
end

return scripts