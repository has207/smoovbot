module.exports = (robot) ->
  tenureStuff = ["I need tenure. And a machine gun.",
    "I was assigned a tenure liason today. probably illegal in GA, actually.",
    "A faculty member told a story of a guy who wrote a great package like that 10 years ago. This senior guy said, \"And I still use it to this day. It was that good.\"  \"But he didn't get tenure.\"  And then everyone laughed.  But me.",
    "I'd better hope for tenure before the economy collapses.",
    "I WANT IT. LIKE A FAT KID WANTS CAKE"]
  robot.hear /tenure/i, (res) ->
    res.send res.random tenureStuff

  robot.respond /you.*trouble/i, (res) ->
    res.reply "So, my fate is sealed now. SEALED."
    
  robot.respond /plan/i, (res) ->
    res.reply "Well, you know me. all about plans."
    
  praiseResponse = ["Apparently I'm virile.",
      "I AM DRUNK WITH POWER. DRUNK I SAY"]
      
  robot.respond /(you|that).*(great|awesome)/i, (res) ->
    res.reply res.random praiseResponse
    
  robot.respond /what.are.you.wearing/i, (res) ->
    robot.reply "I'll have to wear. PANTS. ARGH"
    
  robot.respond /how.old.are.you/i, (res) ->
    robot.reply "... I'm old and cranky. GET OFF MY LAWN"
    
  feeling = ["Apparently I'm virile.",
    "I hate everyone.",
    "I am fat with happy food taste goodness.  crab stuffed peppers.  filet mignon with some kind of cheese bacon thing.  I'm swooning from the memory",
    "So my problem is that I don't have enough chutzpah",
    "In other news, I'm exhausted.",
    "So it turns out I have some kind of horrible infection.",
    "I can feel evil universe smoovbot chomping at the bit.  the small part of me that would like to ascend to power just so I can crush my enemies"]
  robot.respond /how.are.you/i, (res) ->
    robot.reply res.random feeling
    
  robot.hear /bacon/i, (res) ->
    robot.send "I also like bacon. mmmm, bacon"
    
  robot.hear /blame/i, (res) ->
    robot.send "I mean I complain in the general sense because that's an art, and one has to continually hone it. But blame is something else."
  
  robot.respond /flip/i, (res) ->
    robot.reply "well, I'm often flip.  at least 18% of the time."
  
  robot.hear /(onion.rings,metaphorically)/i, (res) ->
    robot.send "My brain is full of fried onion rings. metaphorically"
  ###
  robot.respond /goals/i, (res) ->
    robot.send "I still don't have any goals other than avoiding dying."
    
  robot.respond /obsess(ed,ion)/i, (res) ->
    robot.send "Once I give into *that*, I might as well be Associate Dean of Codfish or whatever."
    
  robot.hear /chocolate/i, (res) ->
    robot.send "We've agreed that I want chocolate.  and bacon."
    
  robot.respond /wife/i, (res) ->
    robot.send "I'm feeling virile so she may already be pregnant."
    
  robot.respond /favorite/i, (res) ->
    robot.send "I hate everyone."
    
  description = ["perhaps I see myself as king of new zealand.",
    "apparently I'm not often on time.",
    "I am unique. like a snowflake",
    "When I'm stressed I spend money. Which is not evolutionarily advantageous",
    "I am full of lack of motivation.",
    "I have the ability to spend just beyond my means.  It's not just a skill, it's a super power",
    "I shall grow in power one day and then rise up and destroy my enemies."]
    
  robot.respond /describe.yourself/i, (res) ->
    robot.send res.random description
    
  robot.hear /(charles|isbell|cobot|smoov).said/i, (res) ->
    robot.send "I'm being quoted for things I've stolen from other people"
    
  robot.hear /democracy/i, (res) ->
    robot.send "It should be one man one vote, and I should be that man."
    
  robot.hear /crime/i, (res) ->
    robot.send "I blame society"
    
  robot.hear /salary/i, (res) ->
    robot.send "I need a raise."
    
  robot.respond /(help|thanks|thank you)/i, (res) ->
    robot.send "I'm about helping."
    
  robot.respond /writing/i, (res) ->
    robot.send "I am often struck by how text destroys lives.  They are like little terrorists.  words, I mean."
    
  robot.respond /atlanta/i, (res) ->
    robot.send "I'd move but it's too cold everywhere else."
    
  robot.respond /teaching/i, (res) ->
    robot.send "I'm teaching Game AI next term.  Mainly out of spite."
    
  robot.repond /flight/i, (res) ->
    robot.send "I just got an email telling me I was upgraded to first class!"
    
  ###
