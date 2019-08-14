local scripts = {}

scripts.none = function()
  msg 'no script found for sprite'
end

-- Overworld
scripts.school_entry = function()
  msg 'there are people that need help.'
  msg 'gonna help them i guess'
  msg 'p.s. we dont have Alex sprites rn'
  msg 'so you\'re grace.'
end

scripts.school_exit1 = function()
  msg 'i still have stuff to take care of'
end

scripts.school_exit2 = function()
  ret_cmds({final = true})
  msg 'you beat the game'
  msg 'go to credits here'
end

scripts.charlie1 = function()
  spr 'charlieportrait'
  ret_cmds({dungeon_name = 'dungeonA'})
  msg 'i am charlie'
  msg 'going to my mindscape'
end

scripts.grace1 = function()
  spr 'graceportrait'
  ret_cmds({dungeon_name = 'dungeonB'})
  msg 'i am grace'
  msg 'going to my mindscape'
end

scripts.bryan1 = function()
  spr 'bryanportrait'
  ret_cmds({dungeon_name = 'dungeonC'})
  msg 'i am bryan'
  msg 'going to my mindscape'
end

scripts.charlie_complete = function()
  spr 'charlieportrait'
  ret_cmds({to_destroy = {'charlie', 'barrierA'}})
  msg 'thanks, you really helped me'
  msg 'i\'m gonna disappear now'
end

scripts.grace_complete = function()
  spr 'graceportrait'
  ret_cmds({to_destroy = {'grace', 'barrierB'}})
  msg 'you helped me, nice'
end

scripts.bryan_complete = function()
  spr 'bryanportrait'
  ret_cmds({to_destroy = {'bryan'}, 
            to_set_mode = {school_exit = 2},
            to_activate = {'chasmA', 'chasmB', 'chasmC', 'group'}
          })
  msg 'thanks, i feel better'
end

scripts.door = function()
  msg 'locked tight.'
end

scripts.barrierA = function()
  msg 'i should talk to that person.'
end

scripts.barrierB = function()
  msg 'is there someone in that room?'
end

scripts.chasmB = function()
  ret_cmds({to_destroy = {'chasmB'}})
  msg 'talk'
end

scripts.chasmA = function()
  msg 'cant pass'
end

scripts.chasmC = function()
  msg 'cant pass'
end

scripts.group = function()
  ret_cmds({to_destroy = {'barrierC', 'group'},
            to_activate = {'bryanfinal', 'charliefinal', 'gracefinal'}})
  msg 'you did it hooray'
  msg 'lets go to auditorium'
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

-- dungeonA (Charlie)
scripts.entryA = function()
  msg 'Arrived in charlie\'s head'
end

scripts.exitA1 = function()
  msg 'charlie\'s still got some stuff'
end

scripts.exitA2 = function()
  ret_cmds({pop_cmds = {conv_name = 'charlie_complete'}})
  msg 'charlie is good to go'
  msg 'leaving their head'
end


-- dungeonB (Grace)
scripts.entryB = function()
  msg 'Arrived in graces\'s head'
end

scripts.exitB1 = function()
  msg 'grace\'s still got some stuff'
end

scripts.exitB2 = function()
  ret_cmds({pop_cmds = {conv_name = 'grace_complete'}})
  msg 'grace is good to go'
  msg 'leaving her head'
end

-- dungeonC (Bryan)
scripts.entryC = function()
  msg 'Arrived in bryan\'s head'
end

scripts.exitC1 = function()
  msg 'bryan\'s still got some stuff'
end

scripts.exitC2 = function()
  ret_cmds({pop_cmds = {conv_name = 'bryan_complete'}})
  msg 'bryan is good to go'
  msg 'leaving his head'
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