module.exports = (robot) ->
  
  said = []
  say = (res, s) ->
    if said.length > 5
      said = said[1...]
    if s not in said
      said = said.concat [s]
      res.send s
      
  tenureStuff = [
    "I need tenure.  And a machine gun.",
    "I was assigned a tenure liason today.  probably illegal in GA, actually.",
    "I WANT IT.  LIKE A FAT KID WANTS CAKE",
    "A faculty member told a story of a guy who wrote a great package like that 10 years ago. This senior guy said, \"And I still use it to this day. It was that good.\"  \"But he didn't get tenure.\"  And then everyone laughed.  But me.",
    "I'd better hope for tenure before the economy collapses.",
  ]

  robot.hear /tenure/i, (res) ->
    say res, res.random tenureStuff

  robot.respond /you.*trouble/i, (res) ->
    say res, "my fate is sealed now.  SEALED."

  feeling = [
    "I AM DRUNK WITH POWER.  DRUNK I SAY.",
    "I can feel evil universe charles chomping at the bit.  the small part of me that would like to ascend to power just so I can crush my enemies",
    "So it turns out I have some kind of horrible infection.",
    "I am fat with happy food taste goodness.  crab stuffed peppers.  filet mignon with some kind of cheese bacon thing.  I'm swooning from the memory",
    "I've gotten too much sleep."
  ]

  robot.respond /you.ok\?/i, (res) ->
    say res, res.random feeling

  plan = [
    "Well, you know me.  all about plans",
    "One can plan plans but not plan outcomes"
  ]

  robot.respond /\ plans/i, (res) ->
    say res, res.random plan

  robot.hear /worst.part/i, (res) ->
    say res, "I'll have to wear.  PANTS.  ARGH"

  robot.respond /why.*you/i, (res) ->
    say res, "... I'm old and cranky.  GET OFF MY LAWN"

  baconStuff = [
    "I like bacon. mmmm, bacon",
    "I'll bet if you put bits on bacon on bacon you could go back in time",
    "Bacon is life"
  ]

  robot.hear /bacon/i, (res) ->
    say res, res.random baconStuff

  robot.respond /would.you/i, (res) ->
    say res, "Once I give into *that*, I might as well be Associate Dean of Codfish or whatever."

  robot.hear /complain/i, (res) ->
    say res, "I complain in the general sense because that's an art, and one has to continually hone it."

  robot.respond /flip/i, (res) ->
    say res, "well, I'm often flip.  at least 18% of the time."

  robot.hear /(onion.rings|metaphorically)/i, (res) ->
    say res, "My brain is full of fried onion rings.  metaphorically"

  robot.respond /goals/i, (res) ->
    say res, "I still don't have any goals other than avoiding dying."

  robot.hear /chocolate/i, (res) ->
    say res, "We've agreed that I want chocolate.  and bacon."

  description = [
    "I spend much of my time extremely pleased with my life circumstances.  which others misinterpret as being extremely pleased with myself.",
    "I was unlucky to be born in a time when further and farther are switching meanings again.",
    "So my problem is that I don't have enough chutzpah",
    "perhaps I see myself as king of new zealand.",
    "apparently I'm not often on time.",
    "I AM ALL POWERFUL OR SOMETHING",
    "When I'm stressed I spend money. Which is not evolutionarily advantageous",
    "I am unique.  like a snowflake.",
    "I have the ability to spend just beyond my means.  It's not just a skill, it's a super power",
    "I am full of lack of motivation.",
    "I shall grow in power one day and then rise up and destroy my enemies.",
    "I'm about six months behind?  IN EVERYTHING",
    "Ask me about my NSF batting average.  I believe it is actually negative.",
    "I'm an absent-minded professor, dammit.",
    "I'm like that kid on Sixth Sense: I see... data structures.",
    "I am SOOOOOOO unmotivated in SOOOOO many ways",
    "I tend to think of myself as overworked and overpaid",
    "I've been known to be active in the past.  I used to be a net.personality",
    "I hate everyone",
    "I'm not REALLY rich.",
    "I was told today that I show leadership and am passionate but can come off as pushy. Anyway, I'm clearly punch drunk.",
    "I've got my finger on the pulse of today's youth.",
    "Truthfully I tend to taunt."
  ]

  robot.respond /^you/i, (res) ->
    say res, res.random description

  curlyStuff = [
    "I often confuse you with The Man.  Sorry about that.",
    "curly's Back AND THIS TIME HIS REWARD FUNCTION IS SET FOR: REVENGE",
    "Sometimes Curly and I just walk in the rain together and discuss our hopes and dreams"
  ]
    
  robot.hear /\ curly/i, (res) ->
    say res, res.random curlyStuff

  wifeStuff = [
    "I'm feeling virile so she may already be pregnant.",
    "Maybe I'll move up in the [parent] rankings from distant second to close second."
  ]

  robot.respond /(wife|marriage|parent)/i, (res) ->
    say res, res.random wifeStuff

  robot.hear /(isbell|smoov|smoovbot).said/i, (res) ->
    say res, "I'm being quoted for things I've stolen from other people"

  robot.respond /parents/i, (res) ->
    say res, "The last thing I need is some parent deciding that I'm trying to sell porn to the kids."

  democracyStuff = [
    "It should be one man one vote, and I should be that man.",
    "You can get 18% of the population to vote to kill all blondes."
  ]

  robot.hear /democracy/i, (res) ->
    say res, res.random democracyStuff

  robot.hear /(crime|justin.bieber)/i, (res) ->
    say res, "I blame society"

  salaryStuff = [
    "I need a raise.",
    "I need more $$$$."
  ]

  robot.hear /\$\$\$/i, (res) ->
    say res, res.random salaryStuff

  robot.respond /atlanta/i, (res) ->
    say res, "I'd move but it's too cold everywhere else."

  feelingStuff = [
    "I'm all giddy.  GIDDY I TELL YOU",
    "I don't particularly care. I think the strongest word to describe my feeling is bemused."
  ]
  
  robot.respond /how.*you.*feel/i, (res) ->
    say res, res.random feelingStuff

  robot.respond /(thanks|thank.you)/i, (res) ->
    say res, "I'm about helping."

  robot.hear /\ words/i, (res) ->
    say res, "I am often struck by how text destroys lives.  They are like little terrorists.  words, I mean."

  robot.hear /teaching.*AI/, (res) ->
    say res, "I'm teaching Game AI next term.  Mainly out of spite."

  robot.hear /^let.me.explain/i, (res) ->
    say res, "You can walk me through this if you want, but I'm going to refuse the conclusion."

  robot.hear /related.work/i, (res) ->
    say res, "I hate related work sections.  More than anything in the world.  Even more than the flu."

  action = [
    "I'm cooking in an iron skillet.  LIKE A MAN",
    "I just made grilled cheese and bacon for the family.  In my new iron skillet.  I'm a real cook again.  I AM THE GREAT HUNTER",
    "I \"co-organized\" a workshop yesterday.  It took all I had not to gouge out my brain.",
  ]

  robot.respond /what.s.up/i, (res) ->
    say res, res.random action

  hate = [
    "I SHALL HOLD MY HATRED INSIDE LIKE A BALL OF, UM, HATRED.",
    "I hate everyone."
  ]

  robot.hear /hatred/i, (res) ->
    say res, res.random hate

  agreeStuff = [
    "We've agreed that I want chocolate.  and bacon.",
    "we are violently agreeing."
  ]
  
  robot.hear /i.agree/i, (res) ->
    say res, res.random agreeStuff

  robot.hear /surprise/i, (res) ->
    say res, "I hate surprises"

  theoryStuff = [
    "I find theory important and interesting and I don't like doing it.",
    "I like doing analysis, but not theory."
  ]
  
  robot.hear /theory/i, (res) ->
    say res, res.random theoryStuff

  robot.hear /prostitution/i, (res) ->
    say res, "The problem is that I'm not at all sure why prostitution ought to be illegal."

  robot.hear /give.a.talk/i, (res) ->
    say res, "I'm HORRIBLE at talks. You know this.  Oh, wait.  I'm not horrible at talks."

  robot.respond /anything.you.can.do?/i, (res) ->
    say res, "Sure there is.  I can panic."

  robot.hear /bar.mitzvah/i, (res) ->
    say res, "You know, I've never been to a bar mitvah before?"

  robot.hear /(christ|x)mas.break/i, (res) ->
    say res, "If Christmas break doesn't come soon, I will start killing those around me."

  robot.hear /hold.office.hours/i, (res) ->
    say res, "I don't even hold office hours.  I hate them.  office hours I mean.  Oh, and undergrads. I have turned my hate into, well, more hate."

  robot.hear /resonant/i, (res) ->
    say res, "It's a heavy burden, being resonant."

  robot.hear /my.fantasy/i, (res) ->
    say res, "My fantasy involves someone folding and putting up my laundry.  Oh, and of course <CENSORED> and <CENSORED>, but only on Tuesdays, naturally."

  robot.hear /MIT/, (res) ->
    say res, "...I was at MIT for 8 years.  I'm used to be attacked on an hourly basis."

  robot.hear /(ch|h)anu(k|kk)ah/i, (res) ->
    say res, "I believe chanukah is based upon [kwanzaa].  Always trying to one-up the Black man.  WHAT'S UP WITH THAT."

  robot.hear /ebert/i, (res) ->
    say res, "Ebert is hilarious when he's pissed off."

  robot.hear /weird.al/i, (res) ->
    say res, "he's amazing.  First off, White & Nerdy is amazing.  Second, it's awesome."

  reason = [
    "Somehow this is your fault.",
    "I suspect racist snow",
    "Because, you know, menacing pause.",
    "Why? BECAUSE EVERYTHING SHOULD TASTE LIKE BACON."
    "Because my students need to be flogged."
  ]

  robot.hear /why\ .*\?/i, (res) ->
    say res, res.random reason

  funnyStuff = [
    "for sufficiently small values of funny."
    "Aside from the fact that there are no Isbell-isms, I like the idea.",
    "It's funny because it's true.",
    "I'm gasping in mock horror",
    "Strange'.  clap clap."
  ]

  robot.hear /that.*funny/i, (res) ->
    say res, res.random funnyStuff

  robot.hear /grading.papers/i, (res) ->
    say res, "My students failed to heed my advice.  So, I killed them.  The papers, not the students.  At least that's what I'm telling the police."

  robot.hear /\ macking/i, (res) ->
    say res, "macking.  as in the gerund of the act of being a mack daddy"

  robot.hear /I.wish.I.could/i, (res) ->
    say res, "It - it - it's enough that you're here (music goes very loud) (fade to black) (not a dry eye in the house)"

  kidStuff = [
    "Remind me to be kind to small children.  Because small children do not automatically deserve my wrath.",
    "Kids are just little vectors.  AND THEY ADD UP---TO DEATH!",
    "The secret is to provide for their needs without bending to their will.",
    "kids are awesome.  one's own kids are awesome.  others not always so much"
  ]

  robot.hear /(kids|children)/i, (res) ->
    say res, res.random kidStuff

  robot.hear /england/i, (res) ->
    say res, "Close your eyes and think of London.  But not a London Broil.  That would be bad."

  robot.respond /\ life/i, (res) ->
    say res, "Life is full of local mins."

  robot.hear /armageddon/i, (res) ->
    say res, "for crying out loud, the Canadian $ is worth as much as the American $.  it's the seventh sign"

  robot.hear /can.t.get.over/i, (res) ->
    say res, "Time.  It heals all wounds, except the belly button."

  robot.hear /codfish/i, (res) ->
    say res, "codfish are terrible brainstormers"

  robot.respond /fat/i, (res) ->
    say res, "Mmmm.  Fat is for lovers."

  robot.hear /mainstream/i, (res) ->
    say res, "See when Black kids in the inner city get together to talk about going mainstream, this is what they worry about: that it's all about making speeches to techno music and making bad parodies of Back to the Future."

  robot.hear /iowa/i, (res) ->
    say res, "Iowa is 113% White."

  robot.hear /\ meek/i, (res) ->
    say res, "The meek shall inherit the earth. They are too weak to refuse."

  robot.hear /what.*\ eating/i, (res) ->
    say res, "Eating is complicated."

  linearAlgebraStuff = [
    "Linear algebra is nice but not necessary, though when a term like \"eigenproblem\" is used, you'll feel less panic",
    "Something involving determining eigenvectors or eigenvalues.."
  ]
  
  robot.hear /linear.algebra/i, (res) ->
    say res, res.random linearAlgebraStuff
    
  robot.hear /mathematics\ /i, (res) ->
    say res, "Math is for the weak, you know that."

  robot.respond /\ true\ /i, (res) ->
    say res, "It's all about the true."

  robot.hear /hypocrisy/i, (res) ->
    say res, "Hypocrisy is a religion in many ways"

  robot.hear /I.*failure/, (res) ->
    say res, "You can fail no one but yourself."

  robot.hear /\ poise/i, (res) ->
    say res, "Quietly being beaten on isn't quite the same thing as poise."

  robot.hear /super.hero/i, (res) ->
    say res, "all Black heroes must have something that suggests that they're Black. It's in the rules."

  robot.hear /young.girls/i, (res) ->
    say res, "Few things are more dangerous than a gaggle of young girls."

  robot.hear /undergraduate/i, (res) ->
    say res, "Let's face it: no one cares about undergraduate education"

  robot.hear /french.maid/i, (res) ->
    say res, "Well, [dressing up in a French maid outfit and cleaning] makes it less likely one will notice when you miss a spot, that's for sure."

  robot.hear /!!!!/i, (res) ->
    say res, "When excited many folks use lots of exclaimation marks"
