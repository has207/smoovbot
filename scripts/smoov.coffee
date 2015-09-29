module.exports = (robot) ->
  tenureStuff = ["I need tenure. And a machine gun.",
    "I was assigned a tenure liason today. probably illegal in GA, actually.",
    "A faculty member told a story of a guy who wrote a great package like that 10 years ago. This senior guy said, \"And I still use it to this day. It was that good.\"  \"But he didn't get tenure.\"  And then everyone laughed.  But me.",
    "I'd better hope for tenure before the economy collapses."]
  robot.hear /tenure/i, (res) ->
    res.send res.random tenureStuff

  robot.respond /you.*trouble/i, (res) ->
    res.reply "So, my fate is sealed now. SEALED."
    
  robot.respond /\bplan\b/i, (res) ->
    res.reply "Well, you know me. all about plans."
    
  praiseResponse = ["Apparently I'm virile.",
      "I AM DRUNK WITH POWER. DRUNK I SAY"]
      
  robot.respond /you.*(great|awesome)/i, (res) ->
    res.reply res.random praiseResponse
  
    
    
