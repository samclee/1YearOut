local scripts = {}

scripts.none = function()
  msg 'no script found for sprite'
end

-- Overworld
scripts.door = function()
  msg 'locked tight.'
end

scripts.barrierA = function()
  msg 'i should talk to that person.'
end

scripts.barrierB = function()
  msg 'is there someone in that room?'
end

scripts.heart = function()
  ret_cmds({minigame = {'foo', 'bar'}})
  msg 'hey'
end

-- auditorium
scripts.school_entry = function()
  msg 'there are people that need help.'
end

scripts.school_exit1 = function()
  msg '...'
  msg 'i\'m not done here.'
end

scripts.school_exit2 = function()
  ret_cmds({final = true})
  msg 'you beat the game'
  msg 'go to credits here'
end
scripts.chairs =  function()
  msg 'most of the seats are empty.'
  msg 'some hold noisemakers and posters.'
  msg 'check poster?'
  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'the posters display generic messages like'
    msg '\"Congrats!\", or \"You made it!\"'
  end
end

scripts.chairs2 = function()
  msg 'some graduation caps sit neatly on the chairs,'
  msg 'waiting for their owners to return.'
  msg 'look closer?'
  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'all of the caps are undecorated.'
  end
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
  msg 'likely abandoned after everyone'
  msg 'tossed their caps into the air.'
end

scripts.screen = function()
  msg 'The projection on the wall flickers.'
  msg 'In bold letter it reads'
  msg '\"CONGRATS CLASS OF 20--.\"'
  msg 'A large crack in the projector lens'
  msg 'cuts off the rest of the year.'
end

-- dungeonA (Charlie)
scripts.charlie1 = function()
  spr 'charlieportrait'
  ret_cmds({dungeon_name = 'dungeonA'})
  msg 'i am charlie'
  msg 'going to my mindscape'
end

scripts.entryA = function()
  msg 'Arrived in charlie\'s head'
  spr 'charlieportrait'
  msg 'details abt myself'
  msg 'okay go inspect now'
end

scripts.exitA1 = function()
  msg 'charlie\'s still got some stuff'
end

scripts.exitA2 = function()
  ret_cmds({pop_cmds = {conv_name = 'charlie_complete'}})
  msg 'charlie is good to go'
  msg 'leaving their head'
end

scripts.charlie_complete = function()
  spr 'charlieportrait'
  ret_cmds({to_destroy = {'charlie', 'barrierA'}})
  msg 'thanks, you really helped me'
  msg 'i\'m gonna disappear now'
end

scripts.charlieA = function()
  ret_cmds({seen = 1})
  msg 'seen 1'
end

scripts.charlieB = function()
  ret_cmds({seen = 2})
  msg 'seen 2'
end

scripts.charlieC = function()
  ret_cmds({seen = 3})
  msg 'seen 3'
end

scripts.charlieD = function()
  ret_cmds({seen = 4})
  msg 'seen 4'
end


-- dungeonB (Grace)
scripts.grace1 = function()
  spr 'graceportrait'
  ret_cmds({dungeon_name = 'dungeonB'})
  msg 'i am grace'
  msg 'going to my mindscape'
end

scripts.entryB = function()
  spr 'graceportrait'
  msg 'details abt myself'
  msg 'okay go inspect now'
end

scripts.exitB1 = function()
  msg 'grace\'s still got some stuff'
end

scripts.exitB2 = function()
  ret_cmds({pop_cmds = {conv_name = 'grace_complete'}})
  msg 'grace is good to go'
  msg 'leaving her head'
end

scripts.grace_complete = function()
  spr 'graceportrait'
  ret_cmds({to_destroy = {'grace', 'barrierB'}})
  msg 'you helped me, nice'
end

-- dungeonC (Bryan)
scripts.bryan1 = function()
  spr 'bryanportrait'
  ret_cmds({dungeon_name = 'dungeonC'})
  msg 'i am bryan'
  msg 'going to my mindscape'
end

scripts.entryC = function()
  spr 'bryanportrait'
  msg 'details abt myself'
  msg 'okay go inspect now'
end

scripts.exitC1 = function()
  msg 'bryan\'s still got some stuff'
end

scripts.exitC2 = function()
  ret_cmds({pop_cmds = {conv_name = 'bryan_complete'}})
  msg 'bryan is good to go'
  msg 'leaving his head'
end

scripts.bryan_complete = function()
  spr 'bryanportrait'
  ret_cmds({to_destroy = {'bryan'}, 
            to_set_mode = {school_exit = 2},
            to_activate = {'TriggerA', 'TriggerB', 'TriggerC'}
          })
  msg 'thanks, i feel better'
end

-- dungeonD (Alex)
scripts.TriggerA = function()
  msg 'i...'
  msg 'i feel weird.'
end

scripts.TriggerB = function()
  msg 'what\'s going on with me?'
end

scripts.TriggerC = function()
  ret_cmds({dungeon_name = 'dungeonD'})
  msg 'argh!'
  msg 'my head!'
  msg 'i\'m going to...'

end

scripts.entryD = function()
  msg 'what the...'
  msg 'where am i?'
end

scripts.chasm = function()
  ret_cmds({to_destroy = {'chasm'}})
  msg 'trapped...'
  msg 'alone...'
end

scripts.exitD = function()
  ret_cmds({pop_cmds = {conv_name = 'alex_complete'}})
  msg 'i\'m good now.'
end

scripts.alex_complete = function()
  msg 'made it out yey.'
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