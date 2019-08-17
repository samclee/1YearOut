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
m'it\'s been an extra hard week.'
m'you need to go somewhere.'
m'somewhere to think.'
m'if only...'
m'you didn\'t always have to go alone...'
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
charlie'oh! woah!'
alex'oh! sorry, i didn\'t mean to scare you!'
charlie'no no, it\'s okay.'
charlie'it\'s just, i\'ve never seen anybody'
charlie'else here before.'
alex'yeah, i guess i haven\'t either.'
alex'i\'m alex, who are you?'
charlie'i\'m charlie.'
charlie'not to sound like a creep, but, uh,'
charlie'do you come here often?'
alex'haha sometimes.'
alex'i mostly come here when i need to think.'
alex'what about you?'
charlie'same, actually.'
charlie'i wish i could get this door open though.'
charlie'i used to know the code, but it doesn\'t'
charlie'seem to work anymore.'
alex'why, what\'s in there?'
charlie'probably nothing, i just feel'
charlie'like i left something in there.'
charlie'it would be long gone by now, but i just'
charlie'can\'t shake the feeling...'
alex'why that room, though?'
charlie'a bunch of the clubs i was in would meet'
charlie'in there, so i spent a lot of my free'
charlie'time inside.'
charlie'a home-away- from-home.'
charlie'or maybe just home, period.'
charlie'someone new runs all those clubs now.'
charlie'i guess they changed the code.'
charlie'which makes sense, it just feels...weird.'

option 'what clubs?'
option 'what about home?'
spr'alexportrait'
menu's'

if selection 'what clubs were you in?' then
charlie'oh, i ran the anthro club,'
charlie'and the student magazine, trans voices,'
charlie'and i also ran the star trek club,'
charlie'and the hiking club,'
charlie'and i was in the larping club,'
charlie'and one year i ran the slam poetry club.'
charlie'.......'
charlie'i was in a lot of clubs.'
else
charlie'it\'s... complicated.'
end
end

scripts.entryA = function()
alex'where am i?'
charlie'home.'
charlie'or, my family\'s home, anyway.'
charlie'i hate it here.'
alex'do you mind if i ask why?'
charlie'i feel so powerless here.'
charlie'it\'s in the middle of nowhere,'
charlie'i don\'t drive, and if i could,'
charlie'who would i see?'
charlie'my shitty high school friends?'
alex'what about people from your clubs?'
alex'you must have liked them, right?'
charlie'i did! i really did! i loved them!'
charlie'but they all got jobs,'
charlie'or moved back to where they grew up,'
charlie'or went straight into a grad program,'
charlie'and i had to move back here.'
charlie'and now i\'m working at the same cafe'
charlie'i worked in high school.'
charlie'i feel like i went back in time'
charlie'and i\'m stuck here again.'
alex'why did you move home?'
charlie'my grades weren\'t good enough for'
charlie'grad school.'
charlie'and without grad school you need'
charlie'impressive research or internships.'
charlie'i\'d be fine with some other cafe,'
charlie'but then where do i go?'
alex'what do you mean?'
charlie'there are cafe jobs everywhere!'
charlie'it\'s overwhelming!'
charlie'i don\'t know where i would be happiest!'
alex'what about moving near the college?'
charlie'i don\'t want to just hang around there.'
charlie'everyone i loved is gone.'
charlie'it just felt empty and sad and it'
charlie'kept changing.'
charlie'it felt like there was no place'
charlie'for me there anymore.'
charlie'so i\'m here.' 
charlie'frozen by choices in a town i hate.'
charlie'all my friends and clubs have moved on.'
charlie'and that\'s fine!'
charlie'but it\'s still sad to watch it happen.'
charlie'and living here now is even worse than when'
charlie'i was in high school.'
alex'why is it worse now?'
charlie'in high school, i had a clear next step:'
charlie'go to college.'
charlie'but now i have no next step.'
charlie'no grad school.'
charlie'no job in my field.'
charlie'i\'m just... frozen.'
end

scripts.exitA1 = function()
  alex 'huh, it\'s a portal to leave.'
  alex 'have i looked at everything yet?'
end

scripts.exitA2 = function()
  ret_cmds({minigame = {level = 1, str = 'exitA3'}})
  msg 'to charlie minigame.'
end

scripts.exitA3 = function()
  ret_cmds({pop_cmds = {conv_name = 'charlie_complete'}})
  msg 'to be replaced.'
end

scripts.charlie_complete = function()
  ret_cmds({to_destroy = {'charlie', 'barrierA'}, to_activate ={'charlienote'}})
  alex 'huh, a note.'
end

scripts.charlienote = function()
m'a sticky note with loopy handwriting:'
charlie'thank you for listening.'
charlie'gone to auditorium.'
charlie'see you later.'
end

scripts.charlie_trophy = function()
  ret_cmds({seen = 1})
  msg 'Plastic trophies encased in'
  m 'thick ice.'
  msg ''
  msg 'You can barely make out the words'
  msg '\"Participation Award\" engraved onto them.'
end

scripts.charlie_photos = function()
  ret_cmds({seen = 2})
m'a frozen corkboard covered with'
m'photos from a photobooth.'
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
grace'you must one of people i heard in the hall.'
grace'you scared the hell out of me,'
grace'but you two have nice voices.'
alex'oh, thank you! i\'m sorry we scared you.'
alex'that was me and charlie. i\'m alex.'
grace'no worries. i\'m surprised to hear anybody.'
grace'i\'m grace kim.'
grace'where is- charlie, you said?'
alex'they\'re in the auditorium.'
alex'do you come here a lot?'
grace'pretty often. i like to look at my work.'
alex'is this your art?'
grace'yeah, it is. old art.'
end

scripts.entryB = function()
grace'i just don\'t have the time or energy.'
grace'i work full-time and i\'m burnt out.'
alex'what do you do?'
grace'customer service for a dental hygiene'
grace'company.'
grace'obviously thrilling.'
grace'i don\'t hate it, but it\'s not what'
grace'i pictured myself doing.'
alex'what was?'
grace'i always thought i\'d work part-time'
grace'for rent and then spend my free time'
grace'making art.'

option'what changed?'
option'no art job?'
spr'alexportrait'
menu'a'

if selection 'what changed?' then
grace'my bills are...'
grace'higher than anticipated.'
grace'i need a stable job with a bigger salary.'
grace'and i don\'t have free time anymore.'
else
grace'i thought about it, but my art is personal.'
grace'feels weird selling personal work,'
grace'ya know?'
grace'most art jobs don\'t pay well anyway,'
grace'and that become my priority in the'
grace'last couple months.'
end

alex'why? did something happen?'
grace'right before graduation, my dad lost his'
grace'job.'
grace'he\'s looking, but it\'s not going well.'
grace'our savings are pretty much gone now.'
grace'i moved back in with him after graduation'
grace'and i\'ve been supporting us since.'
alex'sounds like a lot.'
grace'yeah...'
grace'i don\'t mind move home at all.'
grace'i\'m just worried about him.'
grace'and i\'m not doing great either...'
alex'what do you mean?'
grace'i had to stop seeing my therapist.'
grace'we just couldn\'t afford it.'
grace'it\'s been a few months and i\'m feeling'
grace'the effects.'
grace'i\'m drained from my 9-5 and when i don\'t'
grace'work i can barely get out of bed.'
alex'would making art help?'
grace'yeah, it\'s how i process things.'
grace'but i feel it building up'
grace'and i can\'t get it out.'
alex'i\'m not much of an artist, can you explain?'
grace'it\'s soothing.'
grace'and cathartic.'
grace'like i\'m untangling a big pile of'
grace'thread a little at a time.'
grace'almost feels like meditating.'
alex'but you don\'t have time anymore?'
grace'don\'t have time, but mostly'
grace'don\'t have energy.'
alex'what do you mean?'
grace'i\'m always exhausted from work, but i'
grace'have no therapist to talk to.'
grace'i can\'t feel better with art because i\'m too'
grace'tired to make anything.'
grace'it just builds up.'
alex'that sounds overwhelming.'
alex'i can\'t even imagine.'
grace'i\'m so lost and tired.'
grace'running on fumes and no easy solution,'
grace'ya know?'
grace'in our last session, my therapist said'
grace'i needed to belance my job, family,'
grace'and taking care of myself.'
grace'but that\'s easier said than done.'

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
grace 'slowly, but also impossibly fast.'
grace 'time was all i talked about in'
grace 'therapy for a couple months.'
grace 'when i couldn\'t get out of bed i would grab a'
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
m'streaks creating a fiery figure.'
m'a crimson streak obscures the face, but'
m'you can tell it\'s grace.'
m'the strokes and colors feel powerful, but'
m'she is sitting hunched over, cowering.'
grace'i made that one a couple years ago.'
grace'i was in a really bad place. i felt'
grace'like i was about to explode. i kept'
grace'telling people, but they just looked scared'
grace'and didn\'t know what to say.'
grace'eventually somebody said that they just'
grace'didn\'t understand what i meant.'
grace'i made this to try to explain it.'
grace'my friends helped me find a therapist'
grace'after that.'
end

scripts.grace_artC = function()
  ret_cmds({seen = 3})
m'a large photograph of a kind-looking'
m'older man, sitting with his hands'
m'clasped and smiling.'
m'he looks understanding, and a bit sad.'
m'his expression conveys absolute love.'
grace 'that\'s my dad.'
grace 'i did a while series of photos of him'
grace 'freshman year.'
grace 'it\'s so weird looking back at them.'
grace 'he looks so different.'
grace 'he\'s stressed and tired all the time now.'
grace 'i hid these when i moved back home.'
grace 'i had them out at first, but one day i'
grace 'saw him just standing and staring at one.'
grace 'he looked really sad.'
grace'i packed them all away after that.'
end

scripts.grace_artD = function()
  ret_cmds({seen = 4})
m'a photo of Grace wearing a bright neon'
m'yellow-green jumpsuit in front of a'
m'hot pink backdrop.'
m'the frame is reflective.'
m'her whole body is blurred and you can see'
m'her trail of movement. though her face'
m'is fuzzy, you can tell she\'s smiling.'
grace 'that was from junior year.'
grace 'my therapist asked me to find activities'
grace 'that made me happy, so i pulled down'
grace'the brightest backdrops in the photo lab'
grace 'and started running and hopping and'
grace'skipping in front of them.'
grace'the color and movement was just...fun.'
grace'i took a picture for my therapist and'
grace'ended up liking how it turned out.'
grace'i was happy to see myself happy.'
grace'that\'s why the mirrored frame is there,'
grace'so i can see myself smile when i look at'
grace'it.'
grace'now when i look at it, i\'m just...tired.'
end

scripts.grace_artE = function()
  ret_cmds({seen = 5})
m'a small ceramic sculpture of a house.'
m'inside, what looks like a small, pressed'
m'purple flower sits in the center of'
m'the house\'s floor.'
grace'a house i made after my dad lost his job,'
grace'when i realized i would moving back home,'
grace'at least for a while.'
grace'i was having trouble imaging what it would'
grace'feel like to be back there again.'
grace'i love my home and i went back to visit'
grace'all the time in college, but it\'s not'
grace'the same as living there.'
grace'it was going to be strange moving back,'
grace'so...i tried to visualize what it'
grace'would be like.'
grace'the flower\'s called a \"heart\'s ease\".'
grace'i definitely felt like my heart could'
grace'use some ease.'
grace'so the flower is a kind of wish, i guess.'
grace 'i didn\'t tell anybody though.'
grace'it wasn\'t made for anyone else anyway.'

end

scripts.exitB1 = function()
  alex'i still have to help grace.'
end

scripts.exitB2 = function()
  ret_cmds({minigame = {level = 2, str = 'exitB3'}})
  msg 'to charlie minigame.'
end

scripts.exitB3 = function()
  ret_cmds({pop_cmds = {conv_name = 'grace_complete'}})
  msg 'to be replaced'
end

scripts.gracenote = function()
m'a note with choppy handwriting:'
grace'thank you for listening.'
grace'i\'ve gone to meet charlie.'
grace'i\'ll be in the auditorium if'
grace'you need me.'
end

scripts.grace_complete = function()
  ret_cmds({to_destroy = {'grace', 'barrierB'}, to_activate ={'gracenote'}})
  alex 'another note?'
end

-- roomC
scripts.computerA1 = function()
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

scripts.computerA2 = function()
m'a note left in a text document:'
bryan'i\'m glad i\'m not the only one scared.'
bryan'thank you for listening.'
bryan'i\'m looking for your friends in'
bryan'the auditorium.'
bryan'come join us when you\'re done.'
end

scripts.computerB1 = function()
m'cold, blue computer screens,'
end

scripts.computerB2 = function()
m'a note left in a text document:'
bryan'i\'m glad i\'m not the only one scared.'
bryan'thank you for listening.'
bryan'i\'m looking for your friends in'
bryan'the auditorium.'
bryan'come join us when you\'re done.'
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
alex'hi'
bryan'oh! god, you scared me!'
alex'sorry!'
alex'didn\'t expect to see anyone here, huh?'
bryan'no, i didn\'t!'
bryan'i thought i was the only person coming here.'
bryan'um, i\'m bryan.'
alex'i\'m alex.'
alex'so you haven\'t met grace or charlie?'
alex'they\'re in the auditorium.'
bryan'oh, wow. two more people...'
alex'we all come here to think. you too?'
bryan'yeah. i hide here sometimes.'

option'hide?'
option'me too'
spr'alexportrait'
menu'a'
if selection 'hide?' then
  bryan'from...everything.'
  bryan'big stuff.'
else
  alex'me too.'
  bryan'that\'s a relief.'
  bryan'i thought i was the only one hiding.'
end
end

scripts.entryC = function()
alex'where are we?'
bryan'this is my office.'
bryan'i\'m a programmer.'
alex'do you like it?'
bryan'it\'s okay.'
bryan'i don\'t mind the work.'
bryan'it just feels... different.'
bryan'i think i was kind of expecting'
bryan'something else.'
alex'something else?'
bryan'i was just following the path i was'
bryan'told.'
bryan'go to college,'
bryan'study,'
bryan'graduate,'
bryan'get a well-paying and stable job...'
bryan'now that i\'ve done all that, now what?'
alex'what do you mean?'
bryan'i don\'t know what comes next.'
bryan'this was the place i was trying to get'
bryan'to, and now i\'m here...'
bryan'do i just work until i die?'
bryan'is this all i do for the rest of my life?'
alex'i mean, not until you die, probably...'
alex'but i guess the idea is until you retire?'
bryan'you\'ve seen those articles about'
bryan'climate change prediction, right?'
bryan'i might not even live to retirement!'
bryan'i\'m making choices based on'
bryan'practicality, but those values don\'t'
bryan'even apply to the world i\'m living in!'
bryan'what\'s the point of being practical when'
bryan'we\'re in the middle of a major'
bryan'extinction event led by massive,'
bryan'powerful corporations?'
alex'i don\'t know how to respond to that.'
alex'i guess there is no way to respond.'
alex'it\'s horrifying.'
alex'and i don\'t know what to do.'
bryan'exactly!'
bryan'and i\'m just at a computer, doing nothing!'
alex'okay, well, is there something else you\'d'
alex'rather be doing?'
bryan'i don\'t know! all i do is work!'
bryan'i like fashion, and games,'
bryan'and gardening sounds nice.'
bryan'but i still have to pay rent.'
bryan'at least until the world ends.'
bryan'i feel like i\'m losing it.'
bryan'going to work and pretending there'
bryan'isn\'t an apocalypse around the'
bryan'corner.'
bryan'everything i have ever known will be gone.'
bryan'and i\'m supposed to care about my'
bryan'401k and casual fridays?'
bryan'........'
bryan'i\'m sorry, that got intense.'
bryan'i\'m just scared.'
alex'it\'s okay, i\'m scared too.'
end

scripts.exitC1 = function()
  alex'i can\'t leave just yet.'
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
  ret_cmds({minigame = {level = 3, str = 'exitC3'}})
  msg 'to charlie minigame.'
end

scripts.exitC3 = function()
  ret_cmds({pop_cmds = {conv_name = 'bryan_complete'}})
  msg 'bryan is good to go'
  msg 'leaving his head'
end

scripts.bryan_complete = function()
  ret_cmds({to_destroy = {'bryan'}, 
            to_set_mode = {school_exit = 2,
                            computerA = 2,
                            computerB = 2},
            to_activate = {'TriggerA'}
          })
alex'huh, those computers are different.'
end

-- dungeonD (Alex)
scripts.TriggerA = function()
  ret_cmds({dungeon_name = 'dungeonD'})
  alex '......'
  alex'.............'
  alex '................!'

end

scripts.entryD = function()
  alex 'what?!'
  alex 'what is this?'
  alex'no, i want to get back to the auditorium!'
  alex'i want to get back to my friends!'
  alex'grace!'
  alex'charlie!'
  alex'bryan!'
  m'.......'
  alex'can anybody hear me?'
  m'.......'
  alex'i don\'t want to be alone out here...'
  alex'i\'m so tired of being alone.'
  m'.......'
end

scripts.chasm = function()
  ret_cmds({to_destroy = {'chasm'},minigame = {level = 4, str = 'successD'} })
  alex 'if i had just been a little faster,'
  alex'or left when bryan did,'
  alex'maybe i wouldn\'t be stuck on'
  alex'this side...'
  m'.......'
  alex'god it\'s so quiet here....'
  m'jump to minigame'
end

scripts.successD = function()
  ret_cmds({to_activate = {'standing'}, conv_name = 'successDB'})
  alex '.......!'
end

scripts.successDB = function()
charlie'alex! are you okay?'
grace'what happened?'
alex'i don\'t know!'
alex'i was just walking, and then...'
bryan'do you think you can cross the gap?'
alex'i\'m not sure...'
alex'i\'m scared to try.'
alex'it feels really, really bad over here.'
alex'you\'re all so close, but i feel really...'
alex'alone.'
charlie'what? we\'re right here!'
alex'i know, i just...'
alex'i don\'t know how to explain it.'
grace'i think i understand.'
grace'or maybe i don\'t.'
grace'but i\'d like to.'
grace'if you want to talk with someone,'
grace'or just sit in silence,'
grace'i\'m here for you.'
bryan'me too. even if i can\'t know exactly'
bryan'what you\'re going through, i want to'
bryan'listen if you want to talk.'
charlie'for you it\'s a chasm and for me it\'s ice.'
charlie'maybe it\'s different for everybody.'
charlie'maybe they\'re different but similar.'
charlie'either way, you help me with mine,'
charlie'i\'ll help you with yours.'
grace'none of us can solve the others\''
grace'problems.'
grace'they don\'t have simple solutions.'
bryan'maybe talking about it can help'
bryan'lighten the load a little, though.'
m'the chasm looks different to you.'
m'it\'s like the angle has changed.'
m'it looks flatter than before.'
m'almost like you could walk right over it...'
end

scripts.exitD = function()
  ret_cmds({pop_cmds = {conv_name = 'alex_complete'}})
charlie'woah. leap of faith.'
bryan'indiana jones-style.'
alex'i don\'t know what to say.'
alex'thank you.'
alex'i\'d like to try to talk about it.'
grace'we\'d love to listen.'
grace'wanna get out of here?'
alex'i\'d love that.'
end

scripts.alex_complete = function()
  ret_cmds({to_activate = {'charliefinal', 'gracefinal', 'bryanfinal'}})
  alex '.......'
  alex'guess i\'m done.'
end

scripts.charliefinal = function()
  charlie'i\'ve never seen the front door open before.'
end

scripts.gracefinal = function()
  grace'let\'s get out of here buddy.'
end

scripts.bryanfinal = function()
  bryan 'it seems different in here.'
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