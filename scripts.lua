local scripts = {}

scripts.none = function()
  msg 'no script found for sprite'
end

-- Overworld
scripts.door = function()
  msg 'locked tight.'
end

scripts.barrierA = function()
  alex 'i should talk to that person.'
end

scripts.barrierB = function()
  alex 'is there someone in that room?'
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
  alex '...'
  alex 'i\'m not done here.'
end

scripts.school_exit2 = function()
  ret_cmds({final = true})
  msg 'you beat the game'
  msg 'go to credits here'
end
scripts.chairs =  function()
m'most of the seats are empty, but some hold'
m'noisemakers and posters.'
  msg 'check poster?'
  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'they display generic messages like'
    msg '\"Congrats!\", or \"You made it!\"'
  end
end

scripts.chairs2 = function()
m'some graduation caps sit neatly on the chairs,'
m'waiting for their owners to return.'
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
m'a cap lies on the ground, abandoned after'
m'being tossed into the air'
end

scripts.screen = function()
  msg 'The projection on the wall flickers.'
m'In bold letter it reads'
m'\"CONGRATS CLASS OF 20--.\"'
m'A large crack in the projector lens'
m'cuts off the rest of the year.'
end

scripts.error = function()
  m 'A broken screen.'
  m 'it\'s too broken to read.'
end

scripts.podium = function()
  m 'a podium for giving a speech.'
m'it\'s covered with blank sheets that'
m 'read \"GRADUATION SPEECH\"'
m'followed by nothing else.'
  m 'check the shelf under the podium?'

  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'there are a couple of blank diplomas.'
  end
end

-- hallway
scripts.corkboard = function()
m'a corkboard covered in photos.'
m'all of them feature a happy charlie'
m'surrounded by friends.'
m'the backgrounds vary from a hectic campus'
m'to serene forest scenery.'
end

scripts.flyer = function()
  msg 'a stack of flyers.'
  msg 'some promote different club events.'
  msg 'others are calls to action for social'
  msg 'issues.'
end

scripts.trash = function()
  msg 'Crumpled pieces of paper lay scattered.'
  msg 'pick up and smooth out a page?'
  option 'yes'
  option 'no'
  menu 'not seen'
  if selection 'yes' then
    msg 'The page is a club sign-up sheet,'
    msg 'with columns for names and emails.'
    msg 'Every entry has been crossed out and'
    msg 'scribbled on, to the point where you'
    msg 'can\'t decipher the words.'
  end

end

scripts.backpack = function()
  msg 'a backpack containg a hefty textbook.'
  msg 'several sticky notes are haphazardly'
  msg 'stuck on the cover.'
  msg 'read the stick notes?'

  option 'yes'
  option 'no'
  menu 'a'
  if selection 'yes' then
    msg 'they\'re all club deadline reminders,'
    msg 'written in a looping and carefree'
    msg 'script.'
  end

  msg 'flip through the textbook?'
  option 'yes'
  option 'no'
  menu 'a'
  if selection 'yes' then
    msg 'with a quick glance at the table of '
    msg 'contents, you notice that the chapters'
    msg 'discuss topics like culture and society.'
  end
end

scripts.boots = function()
  msg 'well-worn hiking boots, clearly the'
  msg 'bearers of many good memories.'
  msg 'the owner seems to maintain the boots to the'
  msg 'best of their ability.'
end

-- dungeonA (Charlie)
scripts.charlie1 = function()
  ret_cmds({dungeon_name = 'dungeonA'})
  charlie 'i am charlie'
  alex 'sup'
  charlie 'going to my mindscape'
end

scripts.entryA = function()
  msg 'Arrived in charlie\'s head'

  charlie 'details abt myself'
  charlie 'okay go inspect now'
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
  ret_cmds({to_destroy = {'charlie', 'barrierA'}})
  charlie 'thanks, you really helped me'
  charlie 'i\'m gonna disappear now'
end

scripts.charlie_trophy = function()
  ret_cmds({seen = 1})
  msg 'Plastic trophies encased in'
  m 'thick ice.'
  msg 'You can barely make out the words'
  msg '\"Participation Award\" engraved onto them.'
end

scripts.charlie_photos = function()
  ret_cmds({seen = 2})
m'a frozen corkboard covered with photos from a'
m'photobooth.'
m'each features charlie with a group of'
m'smiling teens.'
m'charlie is clearly not happy though.'
end

scripts.charlie_notebookA = function()
  ret_cmds({seen = 3})
  m 'a notebook, frozen solid.'
  m 'read the pages?'

  option 'yes'
  option 'no'
  menu 'a'
  if selection 'yes' then
    m 'each passage is a diary entry counting down.'
    m '\"87 days til i can leave.\"'
    m '\"86 days til i can leave.\"'
  else
    m 'you think that would be an invasion'
    m 'of privacy.'
    m 'you look away'
  end
end

scripts.charlie_notebookB = function()
  ret_cmds({seen = 4})
  m 'a notebook, frozen solid.'
  m 'read the pages?'

  option 'yes'
  option 'no'
  menu 'a'
  if selection 'yes' then
    m 'each passage is a diary entry.'
    m '\"i can\'t stand being home.\"'
    m '\"i always run into people from high'
    m 'school that used to treat me like-\"'
    m 'the rest is cut off by a crack in the ice.'
  else
    m 'you think that would be an invasion'
    m 'of privacy.'
    m 'you look away'
  end
end



-- roomB
scripts.counter = function()
  msg 'Various paint supplies are strewn over the'
  msg 'countertop.'
m'the artist probably curses her messiness'
m'but never bothers to organize.'
end

scripts.easelA = function()
  msg 'experimental paintings of varying'
  msg 'completion.'
  msg 'paint splashes across the canvas in'
  msg 'colors you never could have imagined.'
end

scripts.easelB = function()
  msg 'experimental paintings of varying'
  msg 'completion.'
  msg 'while each painting is unique, a'
  msg 'unifying theme of frustration emerges.'
end

scripts.photoA = function()
  msg 'a photograph of a woman dancing.'
end

scripts.photoB = function()
  msg 'a photograph of an aged man.'
end

scripts.portA = function()
  msg 'an abstract painting of a woman.'
  msg 'a self-portrait maybe?'
end

scripts.portB = function()
  msg 'an abstract painting of a woman.'
  msg 'is that her over there?'
end

scripts.sml_house = function()
  msg 'a small clay house'
end

-- dungeonB (Grace)
scripts.grace1 = function()
  ret_cmds({dungeon_name = 'dungeonB'})
  grace 'i am grace'
  grace 'going to my mindscape'
end

scripts.entryB = function()
  grace 'details abt myself'
  grace 'okay go inspect now'
end

scripts.exitB1 = function()
  msg 'grace\'s still got some stuff'
end

scripts.grace_artA = function()
  ret_cmds({seen = 1})
m'a painting made up of broad strokes of'
m'blues, whites, and purples.'
m'though it\'s abstract, you can'
m'immediately tell it\'s Grace.'
m'something about the confidence in the body.'
grace 'i painted that last spring.'
grace'it was bright and warm, but i was so...'
grace 'tired. like i was sleep-walking'
grace 'and couldn\'t wake up.'
grace 'i was a few months from graduating'
grace 'and everything felt like it was passing'
grace 'at a snail\'s pace, but also impossibly'
grace 'fast. time was all i talked about in'
grace 'therapy for a couple months.'
grace 'sometimes on the weekends, when i couldn\'t'
grace 'get out of bed i would grab a'
grace 'canvas and tubes of paint, only the ones'
grace 'within reach, and slowly add one or two'
grace 'brush strokes.'
grace 'doing something really, really slow helped'
grace 'me feel grounded, and i would be able'
grace 'to get up, take a shower, and make some food.'
end

scripts.grace_artB = function()
  ret_cmds({seen = 2})
m'a painting radiating energy.'
m'a flurry of red, orange, and yellow'
m'streaks creating a fiery-looking'
m'figure.'
m'a crimson streak obscures the face, but'
m'you can tell it\'s grace.'
m'the strokes and colors feel powerful, but'
m'she is sitting, hunched over.'
m'she looks like she\'s cowering.'
grace'i made that one a couple years ago.'
grace'i was in a really bad place. i felt'
grace'like i was about to explode. i kept'
grace'saying that to people, but everyone just'
grace'looked scared and didn\'t know what to say.'
grace'eventually somebody said that they just'
grace'didn\'t understand what i meant.'
grace'i made this to try to explain it.'
grace'my friends helped me find a therapist'
grace'after that.'
end

scripts.grace_artC = function()
  ret_cmds({seen = 3})
m 'b'
end

scripts.grace_artD = function()
  ret_cmds({seen = 4})
m 'b'
end

scripts.grace_artE = function()
  ret_cmds({seen = 5})
m 'b'
end

scripts.exitB2 = function()
  ret_cmds({pop_cmds = {conv_name = 'grace_complete'}})
  msg 'grace is good to go'
  msg 'leaving her head'
end

scripts.grace_complete = function()
  ret_cmds({to_destroy = {'grace', 'barrierB'}})
  grace 'you helped me, nice'
end

-- roomC
scripts.computerA = function()
m'cold, blue computer screens,'
m'inspect a screen?'

option 'yes'
option 'no'
menu 'a'
if selection 'yes' then
  m'the screen shows lines of code.'
  m'you have no idea what it means,'
  m'much less what it does.'
end
end

scripts.computerB = function()
m'cold, blue computer screens,'
m'inspect a screen?'
end

scripts.chair = function()
m'a backpack on a chair.'
m'the backpack looks spotless and brand-new.'
m'look inside?'
option 'yes'
option 'no'
menu 'a'
if selection 'yes' then
  m'you find class notes, neatly written'
  m'and organized.'
  m'no pages were left empty.'
end
end

scripts.printer = function()
m'an expensive printer.'
m'press the print button?'

option 'yes'
option 'no'
menu 'a'
  if selection 'yes' then
  m'the printer groans to life.'
  m'it slowly beings to cough out a'
  m'piece of paper.'
  m'wait for the paper?'

  option 'yes'
  option 'no'
  menu 'a'
  if selection 'yes' then
    m'after an eternity, the full page'
    m'emerges.'
    m'in bold text it proclaims'
    m'\"the world is dying\"'
    m'followed by smaller text'
    m'\"we are its inheritors.\"'
  else
    m'you back away.'
    m'the lights sputter and die, but not'
    m'before the paper crumbles to ash.'
  end
  end
end

-- dungeonC (Bryan)
scripts.bryan1 = function()
  ret_cmds({dungeon_name = 'dungeonC'})
  bryan 'i am bryan'
  bryan 'going to my mindscape'
end

scripts.entryC = function()
  bryan 'details abt myself'
  bryan 'okay go inspect now'
end

scripts.exitC1 = function()
  msg 'bryan\'s still got some stuff'
end

scripts.bryan_laptop = function()
  ret_cmds({seen = 1})
m'an open laptop.'
m'the browser has at least 3 dozen tabs.'
m'each is a different story about'
m'an ecological disaster and the companies' 
m'behind them.'
m'reading them makes you want to close'
m'the laptop.'
end

scripts.bryan_banner = function()
  ret_cmds({seen = 2})
m 'a large banner.'
m'under it is a picture of an older bryan.'
m'his hair is snowy white, but a'
m'fashionable pink choker peeks out'
m'from his collar.'
m'he looks tired.' 
end

scripts.bryan_plantA = function()
  ret_cmds({seen = 3})
m 'a long-dead potted plant.'
m'it dried out years ago, and you can\'t even'
m'tell what it used to be.' 
end

scripts.bryan_plantB = function()
  ret_cmds({seen = 4})
m'a long-dead potted plant.'
m'several tools are carefully placed nearby.'
m'you can tell that, when they were alive,'
m'they were looked after lovingly and'
m'diligently.' 
end

scripts.exitC2 = function()
  ret_cmds({pop_cmds = {conv_name = 'bryan_complete'}})
  msg 'bryan is good to go'
  msg 'leaving his head'
end

scripts.bryan_complete = function()
  ret_cmds({to_destroy = {'bryan'}, 
            to_set_mode = {school_exit = 2},
            to_activate = {'TriggerA', 'TriggerB', 'TriggerC'}
          })
  bryan 'thanks, i feel better'
end

-- dungeonD (Alex)
scripts.TriggerA = function()
  alex 'i...'
  alex 'i feel weird.'
end

scripts.TriggerB = function()
  alex 'what\'s going on with me?'
end

scripts.TriggerC = function()
  ret_cmds({dungeon_name = 'dungeonD'})
  alex 'argh!'
  alex 'my head!'
  alex 'i\'m going to...'

end

scripts.entryD = function()
  alex 'what the...'
  alex 'where am i?'
end

scripts.chasm = function()
  ret_cmds({to_destroy = {'chasm'}, conv_name = 'successD'})
  alex 'trapped...'
  alex 'alone...'
  alex 'minigame will go here'
end

scripts.successD = function()
  charlie 'friend'
  grace 'friend'
  bryan 'friend'
  alex 'hooray i can cross'
end

scripts.exitD = function()
  ret_cmds({pop_cmds = {conv_name = 'alex_complete'}})
  alex 'time 2 go home'
end

scripts.alex_complete = function()
  alex 'made it out yey.'
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