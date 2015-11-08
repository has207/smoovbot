module.exports = (robot) ->
  
  said = []
  say = (res, s) ->
    if said.length > 25
      said = said[1...]
    if s not in said
      said = said.concat [s]
      res.send s
  
  cheatingStuff = [
    "When I was a student we didn't have G+ to whip ourselves into a frenzy over things like this. We just sat in our corners and softly wept... and we liked it!",
    "you will probably just be kicked out of the program by the Institute",
    "What are our ethical obligations here?",
    "if a large number of students start doing this sort of thing, we will have to put a whole structure into place, and I'll get a headache.",
    "I have heard the \"but how was I supposed to know I couldn't collaborate?!\"",
    "one could argue that such an act is unethical"
  ]
  
  robot.hear /\ cheating/, (res) ->
    say res, res.random cheatingStuff
  
  robot.hear /love.[RM]L/, (res) ->
    say res, "The instructor of record is quite handsome, as well."
  
  robot.hear /graduate.school.*\?/i, (res) ->
    say res, "Think of it as one very long period but with a break in the middle so everyone can plan and see what's going on"
    
  tryStuff = [
    "We shall see.",
    "the way the world is currently set up it wouldn't be possible",
    "there is a good chance you would fail (in all honesty)"
  ]
  
  robot.hear /I.*going.to.try/i, (res) ->
    say res, res.random tryStuff
  
  robot.hear /course.eval/i, (res) ->
    say res, "When I was a wee lad, there was a true course critique that the SGA kept around and distributed for free."

  tenureStuff = [
    "I need tenure.  And a machine gun.",
    "I was assigned a tenure liason today.  probably illegal in GA, actually.",
    "I WANT IT.  LIKE A FAT KID WANTS CAKE",
    "A faculty member told a story of a guy who wrote a great package like that 10 years ago. This senior guy said, \"And I still use it to this day. It was that good.\"  \"But he didn't get tenure.\"  And then everyone laughed.  But me.",
    "I'd better hope for tenure before the economy collapses.",
  ]

  robot.hear /tenure/i, (res) ->
    say res, res.random tenureStuff
  
  robot.hear /basis.set/i, (res) ->
    say res, "I love basis sets"
    
  robot.hear /\ knn/i, (res) ->
    say res, "kNN is the answer to everything"
    
  robot.hear /\ right\?$/, (res) ->
    say res, "mmhmm.."
    
  reactionStuff = [
    "that's beautiful",
    "that's kind of insane",
    "Oh I like that, we should do something about that.",
    "ha HA!",
    "Brilliant",
    "one has to appreciate the sheer delicious evilness of it all",
    "(those aren't quite the same thing, but, I'm just being pedantic)"
  ]
  
  robot.hear /check.*out/i, (res) ->
    say res, res.random reactionStuff

  evilStuff = [
    "I'm not being evil here",
    "BWA HA HA HA HA HA HA!",
  ]
  
  robot.hear /(charles|isbell|smoov).*evil/i, (res) ->
    say res, res.random evilStuff
  
  robot.hear /\ 90s/, (res) ->
    say res, "Ha! I remember those days..."
  
  robot.hear /interest.*programming/, (res) ->
    say res, "we aren't interested in programming as anything more than a means to an end. We are interested in computational thinking."

  exponentialStuff = [
    "I guess my hope would be that all optimal sets of size k+1 must contain all optimal sets of size k.",
    "One possibility is that the requirements are actually highly constrained and otherwise highly overlapping",
    "Someone should be able to prove whether that's optimal.",
    "I'd probably throw up my hands and do a simple loop",
    "The hard part, I think, is that the n in the exponential for choosing which classes to match is NOT small. That gets ugly very quickly.",
    "Although exponential, n is small. And the Kolmorgorov complexity is small and that's probably what matters here."
  ]
  
  robot.hear /exponential/, (res) ->
    say res, res.random exponentialStuff
  
  robot.hear /\ graph/, (res) ->
    say res, "(I'm not sure a graph helps all that much... but I could be wrong about that)."

  howStuff = [
    "If you do it right, Weka should involve minimal implementation",
    "I've done that sort of thing before, and it's pretty easy once you work out the right operators.",
    "The problem needs to be formally defined. There are some important details.",
    "I still think we're in Arrow's Impossibility result territory here, but I could be overthinking it.",
    "You can go to my webpage and find links",
    "Just email the professor",
    "It all just sort of works out.",
    "there a lot of things to consider and one should be explicit about them if possible",
    "To start, sketch out what the metric of success is. What are the trade-offs?",
    "The question is an interesting one, sure. I'd be happy to hear ideas.",
    "I don't understand the question."
    "There are mechanisms. (Google should get you there)",
    "This is all machine learning so all we need is data",
    "I'm confused by this wording.",
    "Let's look at all that stuff we learned in supervised learning and apply it",
    "As we move toward steady state, the professionals will figure out how to manage the reality."
  ]
  
  robot.hear /how.do.*\?$/i, (res) ->
    say res, res.random howStuff
  
  robot.hear /how.long.*have.*\?/i, (res) ->
    say res, "You have six years"
  
  varsityStuff = [
    "The Varsity is revenge by a student who failed out of Tech. Draw your own conclusions.",
    "Even the soda is greasy at the Varsity."
  ]
  
  robot.hear /the.varsity/i, (res) ->
    say res, res.random varsityStuff
  
  moralStuff = [
    "I see no obvious way around it because the rules are highly non-linear, so to speak",
    "One cannot judge it on a moral scale. Is the tornado moral? The earthquake? The meteor that ended the dinosaurs?"
  ]
  
  robot.hear /morality/, (res) ->
    say res, res.random moralStuff
    
  robotStuff = [
    "it's not like Robotics has a future or anything",
    "I for one welcome our robotic overlords"
  ]
  
  robot.hear /robotics/i, (res) ->
    say res, res.random robotStuff
  
  robot.hear /features.*\?$/i, (res) ->
    say res, "If you always have the right features the problem becomes easy"
  
  robot.hear /algorithms.*\?$/i, (res) ->
    say res, "Algorithms are algorithms are algorithms are algorithms"
  
  burlapStuff = [
    "RLDM assignments are mostly designed to steer you strongly toward BURLAP.",
    "Why do you need anything like BURLAP? Why don't you just use the UCI database and WEKA"
  ]
  
  robot.hear /burlap/i, (res) ->
    say res, res.random burlapStuff

  robot.hear /reinforcement.learning.*not/i, (res) ->
    say res, "You're suggesting that we don't have any way to make Reinforcement Learning work in the real world?"
  
  robot.hear /on.average/i, (res) ->
    say res, "Your head's in an oven, your feet are in ice water, so on average you're comfortable?"

  sexStuff = [
    "There's always homecoming...",
    "Sure, animals do it, people do it, birds do it.",
    "That would violate FERPA."
  ]
  
  robot.hear /\ (sex|alcohol).*\?/i, (res) ->
    say res, res.random sexStuff 
  
  robot.hear /ice.cream/i, (res) ->
    say res, "When I have ice cream you can hear me smacking. <smack> <smack> <smack>"
  
  robot.hear /omscs.*campus.*degree/i, (res) ->
    say res, "There is only one degree."
    
  canStuff = [
    "Probably. It will have to go through approvals, but I expect it will happen.",
    "It's possible.",
    "The question is an interesting one, sure. I'd be happy to hear ideas.",
    "I think I can do that.",
    "I'm ready",
    "I am actively doing magical administrative stuff that's invisible to all of you",
    "I'm confident it will happen because it's obvious that it should.",
    "Fair enough",
    "I thought that was effectively what we did."
  ]
  
  robot.respond /can.you/i, (res) ->
    say res, res.random canStuff
  
  robot.hear /\ (cios|surveys)/i, (res) ->
    say res, "We read them, and being the way we are, faculty tend to reflect on them."
    
  taStuff = [
    "TA shortages are non-uniform.",
    "Luckily, I'm not an advisor and so can be snarky as I want to be.",
    "I think applying to be a grader and/or TA would be the right thing to do, but that's an actual commitment.",
    "I would suggest using out-of-band mechanisms if one just wants to help out, so to speak. (hipchat or whatever it is the kids are using this month; I'm sure it will be something else by Thursday)"
  ]

  robot.hear /TA.*help/, (res) ->
    say res, res.random taStuff
  
  robot.hear /I.think.that/i, (res) ->
    say res, "You're close but not quite right. Anyway, it's all moot."
  
  robot.hear /early.*matters/i, (res) ->
    say res, "Early doesn't matter, at least not in principle."
    
  privateStuff = [
    "I can always get to that information.",
  ]
  
  robot.hear /be.private/, (res) ->
    say res, res.random privateStuff
  
  csStuff = [
    "(I agree, though I'd use computing instead of computer science and computationalist instead of computer scientist because I've always thought that computer science sounds like a cry for help... but that's really besides the point)",
    "I prefer computing, and refer to myself as a computationalist.",
    "Computer science has sometimes come out of math departments, sometimes out of engineering."
  ]
  
  robot.hear /computer.science/i, (res) ->
    say res, res.random csStuff
  
  xkcdStuff = [
    "The one that describes my entire life from 1986-2000 or so is: http://xkcd.com/386/",
    "One of my favorite xkcd's that describes my academic life: http://xkcd.com/1425/"
  ]
  
  robot.hear /[^/]xkcd/, (res) ->
    say res, res.random xkcdStuff
  
  robot.respond /obviously/i, (res) ->
    say res, "Not always obviously, but sometimes."
  
  donutStuff = [
    "I'm not a fan of Mary Mack's, but the Krispy Kreme across the street is awesome.",
    "HOT DONUTS NOW."
  ]
  
  robot.hear /donuts/i, (res) ->
    say res, res.random donutStuff
    
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
    "One can plan plans but not plan outcomes",
    "I'm sure I'll give a talk somewhere in the next two months..."
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

  wouldStuff = [
    "The question is an interesting one, sure. I'd be happy to hear ideas.",
    "Once you give into *that*, you might as well be Associate Dean of Codfish or whatever.",
    "I'd be willing to do that, especially if it means we don't have to do another quiz",
    "Well, I became a professor for a reason, after all.",
    "I'm quite sure it will happen",
    "I really don't expect so, but no official promises yet."
  ]
  
  robot.hear /would.you/i, (res) ->
    say res, res.random wouldStuff

  robot.hear /worth.it/, (res) ->
    say res, "It would only really be worth it for the harvesting of tears."

  robot.hear /can.succeed/, (res) ->
    say res, '"can succeed" is not the same as "will succeed" and "did not succeed" is not the same as "could not have succeeded"'

  robot.hear /complain.*\?/i, (res) ->
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
    "he's Back AND THIS TIME HIS REWARD FUNCTION IS SET FOR: REVENGE",
    "Sometimes he and I just walk in the rain together and discuss our hopes and dreams",
    "I'm always taunting him. Sometimes I just taunt him for the fun of it"
  ]
    
  robot.hear /\ (curly|littman)/i, (res) ->
    say res, res.random curlyStuff

  wifeStuff = [
    "I'm feeling virile so she may already be pregnant.",
    "Maybe I'll move up in the [parent] rankings from distant second to close second."
  ]

  robot.respond /(wife|marriage|parent)/i, (res) ->
    say res, res.random wifeStuff

  quoteStuff = [
    "(immediately after that sentence I have an explanation of what it means in practice)",
    "I'm being quoted for things I've stolen from other people",
    "A wise man once said: quoting oneself is perfectly reasonable."
  ]
  
  robot.hear /(isbell|smoov|smoovbot).said/i, (res) ->
    say res, res.random quoteStuff

  robot.respond /parents/i, (res) ->
    say res, "The last thing I need is some parent deciding that I'm trying to sell porn to the kids."

  democracyStuff = [
    "It should be one man one vote, and I should be that man.",
    "You can get 18% of the population to vote to kill all blondes."
  ]

  robot.hear /democracy/i, (res) ->
    say res, res.random democracyStuff

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

  thanksStuff = [
    "I'm about helping",
    "Okay, back to patrolling Gotham."
  ]
  
  robot.respond /(thanks|thank.you)/i, (res) ->
    say res, res.random thanksStuff
    
  robot.hear /thank.*smoov/i, (res) ->
    say res, res.random thanksStuff

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
    "I hate everyone.",
    "I think the best thing about this thread is that I get to see your hopes and dreams laid bare."
  ]

  robot.hear /hatred/i, (res) ->
    say res, res.random hate

  agreeStuff = [
    "I think the only thing we agree on is to not use Word.",
    "We've agreed that I want chocolate.  and bacon.",
    "we are violently agreeing.",
    "You're all way off.",
    "Several birds are being bludgeoned at once.",
    "Those two situations are not mutually exclusive.",
    "Truthfully, it is not a bad idea, but it is impractical to enforce.",
    "that would border on the insane, but it is allowed",
    "Nah...",
    "Typically, yes.",
    "I know you're wrong because I'm the guy who makes the policy"
  ]
  
  robot.hear /i.agree/i, (res) ->
    say res, res.random agreeStuff

  robot.hear /s\ related/, (res) ->
    say res, "Being related is not enough."
    
  robot.hear /school.colors/i, (res) ->
    say res, "There was an entire task force put together in the 1990s to deal with our official school color issue and apparently it was bit of a blood bath. Turns out that people really, really care about this sort of thing."

  robot.hear /I.learned/, (res) ->
    say res, "Give a man a fish and he'll eat for a day. Teach a man to fish and he will bore you with fishing stories for the rest of his life."
    
  surpriseStuff = [
    "when the big surprise comes, the question will change if not the answer",
    "it's not something that comes up often, as you might imagine.",
    "I'm not going to tell you what the big surprise is, but you will find out soon enough.",
    "I hate surprises",
    "I'm mildly amazed no one thinks these things don't already happen."
  ]

  robot.hear /surprise/i, (res) ->
    say res, res.random surpriseStuff

  robot.hear /they.*each.other/, (res) ->
    say res, "Think of them as independent actions, not as things that apply to one another."
    
  robot.hear /will.I.*\?/, (res) ->
    say res, "You'll be informed if you don't."
    
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

  robot.hear /KBAI.is/, (res) ->
    say res, "KBAI is GOFAI with a Cog Sci emphasis"
  
  robot.hear /their.resume/i, (res) ->
    say res, "They can do whatever they want on their resumes. I put \"Devilishly Handsome\" myself. So?"
    
  mlExamStuff = [
    "the assessment for 7641 is a large part of what makes it... special.",
    "I love those exams"
  ]
  
  robot.hear /ML.exams/, (res) ->
    say res, res.random mlExamStuff
  
  robot.hear /I.understand/, (res) ->
    say res, "it turns out that humans confuse familiarity with understanding"
  
  robot.hear /relevance/, (res) ->
    say res, 'I feel obligated to point out that "relevance" and "interest" are not the same thing'
  
  robot.hear /tragedy.*commons/i, (res) ->
    say res, "To learn more about tragedies of the commons and prisoners' dilemma, take 7641!"
  
  robot.hear /should.be.easy/i, (res) ->
    say res, "I'm pretty sure that's not as easy as you think it is..."
  
  robot.hear /be.doable/i, (res) ->
    say res, "It's certainly doable for some definition of doable, but I'm pretty sure that there is at least one NP complete problem in there"
    
  robot.hear /prisoner.*dilemma/i, (res) ->
    say res, "To learn more about tragedies of the commons and prisoners' dilemma, take 7641!"
  
  cppStuff = [
    "something much lower level and more primitive, like C",
    "one needs C++ to really do permanent damage to one's psyche."
  ]
  
  robot.hear /C\+\+/, (res) ->
    say res, res.random cppStuff
  
  robot.hear /summer.*registration/i, (res) ->
    say res, "Summer is complicated."
    
  registrationStuff = [
    "I used to write modem scripts to register myself and my friends as quickly as possible",
    "A wise man once said: I think the problem with registration will be hoarding."
  ]
  
  robot.hear /registration.*problem/i, (res) ->
    say res, res.random registrationStuff

  robot.hear /(love|like).*machine.learning/i, (res) ->
    say res, "machine learning is just easy and awesome"
  
  robot.hear /(charles|isbell|smoov).*hasn.?t/i, (res) ->
    say res, "...yet"
    
  robot.respond /haven.?t/i, (res) ->
    say res, "...yet"
    
  robot.hear /solutions/, (res) ->
    say res, "there are better and worse solutions"
    
  reason = [
    "for out-of-band reasons",
    "So, the pattern is pretty guessable",
    "(this is an example of the sorts of things that we know are true but can't do anything with because, you know, rules)",
    "The question is an interesting one, sure. I'd be happy to hear ideas.",
    "That's harder than you think.",
    "The policy implications are subtle.",
    "Usually, the answer is: data.",
    "Doing otherwise would probably require that we hire all of you to reprogram Banner in COBOL++.",
    "because, you know, physics.",
    "Somehow this is your fault.",
    "I suspect racist snow",
    "Because, you know, menacing pause.",
    "Why? BECAUSE EVERYTHING SHOULD TASTE LIKE BACON."
    "Because my students need to be flogged.",
    "I blame society",
    "We have to leave students to learn something on their own, otherwise what would the point be",
    "What's the difference?",
    "I don't care one way or another, but I do find holding those two positions simultaneously to be mildly amusing.",
    "Shrug",
    "Because I'm recording right now, literally. The cameras are rolling.",
    "in this case such the issue is mostly moot",
    "There's what is supposed to happen and what happens."
  ]

  robot.hear /why\ .*\?/i, (res) ->
    say res, res.random reason
  
  robot.respond /^I.can/, (res) ->
    "You can do whatever you want"
    
  funnyStuff = [
    "for sufficiently small values of funny."
    "Aside from the fact that there are no Isbell-isms, I like the idea.",
    "It's funny because it's true.",
    "I'm gasping in mock horror",
    "Strange'.  clap clap."
  ]

  robot.hear /that.*funny/i, (res) ->
    say res, res.random funnyStuff

  robot.hear /andrew.ng/i, (res) ->
    say res, "(Andrew Ng and I were office mates in grad school for awhile, so there you go)"
  
  robot.hear /is\ certain[^l]/, (res) ->
    say res, "NOTHING IS CERTAIN"
  
  robot.hear /\ AOS.*(hard|tough|easy)/, (res) ->
    say res, "AOS is just hard"
  
  robot.hear /I.learned.*teaching/i, (res) ->
    say res, '"You don\'t understand something until you can teach it to someone else."'
    
  gradingStuff = [
    "I think I'll add assignment 5: implement AWS in Fortran. Thanks for the inspiration!",
    "I've seen students fail to graduate for this reason.",
    "I don't care about programming / implementing ML algorithms in ML... at all",
    "Remember those words later in the term when you have the urge to complain that assignments are not being graded quickly enough.",
    "My students failed to heed my advice.  So, I killed them.  The papers, not the students.  At least that's what I'm telling the police.",
    "What I care about is the analysis and the way you summarize it in your write up, not your code. WEKA!"
  ]
  
  robot.hear /grading.papers/i, (res) ->
    say res, res.random gradingStuff
    
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
    'More important is that terms like "random variable" or "matrix inverse" don\'t make you want to cry.',
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
