#  Process Diary

## A small note about a ginger cat - Tuesday 13 August 2024, 11:17pm

In finally attempting to put this whole GitHub-as-process thing into practice, I created a repository and stuck my project in there. You can dig through all my stuff now, and I feel a little weird about it.

Godot did not enjoy this process, or I did something whacky as I shuffled files around, and somehow ended up with a file conflict that set some of my sprite work back a few steps. It's a small, if annoying, amount of work to redo, but it's the kind of thing that felt simple a week ago as I was teaching myself to use Libresprite, and now feels unbearable a week later. It's still simple, I just have to do it. 

In true fashion, I abandoned that task mid-flow and decided to boot this thing into existence. Now there's a diary. 

Now I need to learn something about Markdown. 

Now I need to take all those pages of notes I've written and retrospectively add them to the diary. 

...

So yeah, about the ginger cat.

On reloading the Fighters tilesheet into Godot and running the scene, I found myself staring at the first (second?) draft of the Knifefighter in all their black and grey fur glory. Thankfully I at least had the single frame of the ginger version, so I could quickly reconstruct the frames for the various animations.

Seeing the black/grey version though made me realise one of the points of this exercise was to keep track of my  design decisions. Like making the cat ginger to begin after feedback that this was easier to see against the background, and thinking further about how each Fighter needed some sort of distinct visual design. Besides being a cat.

The old sheet also reminded me of the momentary madness of removing a single layer of pixels to try and give an effect of the cat pawing away at a surface to get comfortable (is there an actual term for this?). In my head it looked cute. In reality it was a little distracting.

So the black and grey cat stays in the picture. It probably won't get used in the version for September, unless I really make headway on player skins. We'll *save it for the Deluxe Edition*.

## Feedback on Feedback - Monday 19 August 2024, 4:19pm

I presented the current state of *Jumpfighters* during a Work in Progress session last Friday. People seemed into the idea as whole - the arcade-style premise of the game, its pixel art asthetic, and its focus on local multiplayer - but I receive a note on the current level design; namely, that it's too large and has too much space. 

Hearing someone else say this crystalised a few thoughts that I had been having as I work on the game, but had not really been able to manifest due to a lack of playtesting. Namely, if players are meant to directly compete with each other as they are racing towards the Goal Area, there are just too many places to either hide or avoid conflict entirely. Which then begs a key question of what is the game even meant to be? Is it about **jumping** or **fighting**?

Until now, I had thought the answer was **both**. But in the pursuit of creating something in the vein of *Killer Queen*, which famously has multiple pathways for players to succeed, it's possible I've taken one objective allowed players two distinct methods of play to achieve it without them ever needing to cross paths.

I have been slowly making adjustments to the map to try and counter this - such as the starting positions of both players, which are deliberately too short to jump over. thus forcing some kind of combat. Or the use of collecting (presently hyptothetical) keys to the helicopter, positioned on the other side of the screen from where you start. But in a conversation with the course supervisor, that while a layout like what I have may work for something like *Mario Bros.*, it may not be conducive to the frenetic pace I am after in Jumpfighters.

This was a particularly pointed comment, as the level design of *Mario Bros.* was very much in mind when I designed this test stage. When they then elaborated that I probably wanted something more akin to *Towerfall* (itself another key reference for *Jumpfighters*), I could see the point more clearly. As *Mario Bros.* is more PvE than PvP, it stands to reason that its level degined would support this type of gameplay. *Mario Bros.* is also a much a slower, *floatier* game than something like *Towerfall* (let alone what I'm going for in *Jumpfighters*), so it checks out that some of that influence has rubbed off on my game.

The suggestion to fix this was just to make the whole world *smaller*, like a quarter of the size of what I currently have on offer. [My partner had an entirely different different thought on this, which at the time of writing has entirely escaped me.] This notion has been bouncing around my head for the last few days, and I can perceive a number of different ways of trying this out. 

The one that seems to holding court in the front of my brain is to have players race through a series of tightly designed rooms, and that the player who *wins* the most rooms is the one who prevails overall. Comabt could still play a role here, but mostly as a means for the Fighters to slow each other down, rather than be a means to score points unto themselves. Another is to keep the single room (even scrolling, potentially) concept that I had at the beginning of the project, but have the level(s) be much much less symmetrical. There's potentially lots to play with here.

One thing that was mentioned at the end of my slot, the kind of thing that's really obvious but not as obvious as when it's actually said out loud, is that the key thing about these sorted of games is that they're tuned to an absolute nth degree. This means a *lot* of playtesting. I don't know if I'm going to get there to the extent to which I'd like, but hopefully I can at least get a test of the smaller map at some point this week to see if this *Small World* theory bears out.

OK, I was going to allow myself three songs of *The English Riviera* to punch out these notes. The whole album is now finished - let's try and get some actual work done later this evening.

## Update on Feedback on Feedback - Wednesday 21 August 2024, 5:20pm

*"...let's try and get some actual work done later this evening."*

Yeah, this was an ambitious suggestion. But I'm on holiday, dang it.
