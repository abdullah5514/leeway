# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.new(username: 'hermione_granger', password: '123456')
  user1.photo.attach(io: File.open("app/assets/images/profpic1.png"), filename: 'profpic1.png')
  user1.save!

user2 = User.create(username: 'harry_potter', password: '123456')
  user2.photo.attach(io: File.open("app/assets/images/profpic2.png"), filename: 'profpic2.png')
  user2.save!

user3 = User.create(username: 'ron_weasley', password: '123456')
  user3.photo.attach(io: File.open("app/assets/images/profpic3.png"), filename: 'profpic3.png')
  user3.save!

user4 = User.create(username: 'neville_longbottom', password: '123456')
  user4.photo.attach(io: File.open("app/assets/images/profpic4.png"), filename: 'profpic4.png')
  user4.save!

user5 = User.create(username: 'draco_malfoy', password: '123456')
  user5.photo.attach(io: File.open("app/assets/images/profpic5.png"), filename: 'profpic5.png')
  user5.save!

user6 = User.create(username: 'albus_dumbledore', password: '123456')
  user6.photo.attach(io: File.open("app/assets/images/profpic6.png"), filename: 'profpic6.png')
  user6.save!

user7 = User.create(username: 'minerva_mcgonagall', password: '123456')
  user7.photo.attach(io: File.open("app/assets/images/profpic7.png"), filename: 'profpic7.png')
  user7.save!

user8 = User.create(username: 'fred_weasley', password: '123456')
  user8.photo.attach(io: File.open("app/assets/images/profpic8.png"), filename: 'profpic8.png')
  user8.save!

user9 = User.create(username: 'george_weasley', password: '123456')
  user9.photo.attach(io: File.open("app/assets/images/profpic9.png"), filename: 'profpic9.png')
  user9.save!

user10 = User.create(username: 'oliver_wood', password: '123456')
  user10.photo.attach(io: File.open("app/assets/images/profpic10.png"), filename: 'profpic10.png')
  user10.save!

user11 = User.create(username: 'ginny_weasley', password: '123456')
  user11.photo.attach(io: File.open("app/assets/images/profpic11.png"), filename: 'profpic11.png')
  user11.save!

user12 = User.create(username: 'rubeus_hagrid', password: '123456')
  user12.photo.attach(io: File.open("app/assets/images/profpic12.png"), filename: 'profpic12.png')
  user12.save!

user13 = User.create(username: 'angelina_johnson', password: '123456')
  user13.photo.attach(io: File.open("app/assets/images/profpic13.png"), filename: 'profpic13.png')
  user13.save!

user14 = User.create(username: 'katie_bell', password: '123456')
  user14.photo.attach(io: File.open("app/assets/images/profpic14.png"), filename: 'profpic14.png')
  user14.save!

user15 = User.create(username: 'alicia_spinnet', password: '123456')
  user15.photo.attach(io: File.open("app/assets/images/profpic15.png"), filename: 'profpic15.png')
  user15.save!

user16 = User.create(username: 'colin_creevey', password: '123456')
  user16.photo.attach(io: File.open("app/assets/images/profpic16.png"), filename: 'profpic16.png')
  user16.save!

user17 = User.create(username: 'severus_snape', password: '123456')
  user17.photo.attach(io: File.open("app/assets/images/profpic17.png"), filename: 'profpic17.png')
  user17.save!

Channel.destroy_all

channel1 = Channel.create(title: 'dumbledores-army', private: true)
channel2 = Channel.create(title: 'general')
channel4 = Channel.create(title: 'quidditch')
channel5 = Channel.create(title: 'gryffindor-house', private: true)
channel6 = Channel.create(title: 'transfiguration')
channel7 = Channel.create(title: 'care-of-magical-creatures')
channel9 = Channel.create(title: 'order-of-the-phoenix-hq', private: true)

# DM
dm3 = Channel.create(title: 'Colin Creevey', is_dm: true)
# dm10 = Channel.create(title: 'Fred Weasley, George Weasley', is_dm: true)
dm9 = Channel.create(title: 'Fred Weasley, George Weasley, Ginny Weasley, Hermione Granger, Ron Weasley', is_dm: true)
dm7 = Channel.create(title: 'Hermione Granger', is_dm: true)
dm8 = Channel.create(title: 'Hermione Granger, Ron Weasley', is_dm: true)
dm1 = Channel.create(title: 'Hermione Granger, Ron Weasley, Rubeus Hagrid', is_dm: true)
dm4 = Channel.create(title: 'Minerva McGonagall', is_dm: true)
dm5 = Channel.create(title: 'Neville Longbottom', is_dm: true)
dm2 = Channel.create(title: 'Oliver Wood', is_dm: true)
dm6 = Channel.create(title: 'Ron Weasley', is_dm: true)



Message.destroy_all

# DA
Message.create(body: 'Hey guys, we think we\'ve found a place to practice defense against the dark arts', author_id: user2.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Meet us in the 7th floor corridor, outside the painting of those trolls', author_id: user3.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'We don\'t have quidditch practice today, so that sounds good', author_id: user13.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: '6 o\'clock, don\'t be late', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'DON\'T tell anyone about the meeting', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Remember the contract you all signed', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Yeah, let\'s try not to get caught by Umbridge', author_id: user2.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Okay, Harry! I will definitely be there, Harry!', author_id: user16.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'You\'re the boss, Harry', author_id: user8.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Yep, Fred and I will see you there', author_id: user9.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Got it! See you there', author_id: user11.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Luna and I will be there', author_id: user4.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Can\'t wait to properly learn some defense', author_id: user9.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Yeah, that old bat hasn\'t taught us anything all year', author_id: user8.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Lol too true', author_id: user14.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'We\'ll be starting with the basics, before doing some of the cool stuff', author_id: user2.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'I\'ve come up with an idea to communicate with each other off Leeway', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'You know, because we\'re not on our computers during the day', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'What is it?', author_id: user11.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'I\'ve put a protean charm on leprechaun gold!', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'The serial number will really be the date and time of our next meeting, and when Harry changes the numbers on his coin, ours will all change too', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: '...', author_id: user8.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'What?', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'I thought it was a pretty good idea...', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'That\'s an NEWT level charm!', author_id: user9.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'It wasn\'t that challenging once I got the hang of it', author_id: user1.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Wow, Hermione!', author_id: user4.id, messageable_type: "Channel", messageable_id: channel1.id)
Message.create(body: 'Yeah, thanks Hermione!', author_id: user2.id, messageable_type: "Channel", messageable_id: channel1.id)

#general
Message.create(body: 'Welcome!', author_id: user6.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Welcome to a new year at Hogwarts! Before we begin our banquet, I would like to say a few words. And here they are: Nitwit! Blubber! Oddment! Tweak!', author_id: user6.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Thank you.', author_id: user6.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: '????????????????????????', author_id: user8.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Genius!', author_id: user9.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Now that the feast is over, some announcements:', author_id: user7.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Our caretaker, Argus Filch, has asked me to remind you all that Fanged Fisbees are banned', author_id: user6.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'And dueling is not acceptable behavior in the corridors', author_id: user7.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'All who do not respect these rules will be given detention', author_id: user7.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Detention ?????I wonder what thats like', author_id: user8.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'What a foreign concept', author_id: user9.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'That is enough, Mr. and Mr. Weasley', author_id: user7.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Another reminder: the Forbidden Forest is out of bounds to all students!', author_id: user6.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'Now, to bed, all of you', author_id: user6.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'There will be open pitch tomorrow to practice quidditch for those who are interested!', author_id: user10.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'I\'ve started an organization called S.P.E.W. ?????the Society for the Protection of Elfish Welfare', author_id: user1.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'I was going to put Stop the Outrageous Abuse of Our Fellow Magical Creatures and Campaign for a Change in Their Legal Status ??? but it would not fit on the badge. So that???s the heading of our manifesto instead', author_id: user1.id, messageable_type: "Channel", messageable_id: channel2.id)
Message.create(body: 'For all who are interested, just Leeway me directly!', author_id: user1.id, messageable_type: "Channel", messageable_id: channel2.id)

# quidditch
Message.create(body: 'Welcome back everyone, practice at 6am tomorrow!', author_id: user10.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'Seriously, Oliver?? 6am?!', author_id: user8.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'It\'s the first week of school!', author_id: user13.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'Blimey, are you trying to kill us?', author_id: user9.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'No, Oliver\'s right!', author_id: user2.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'If we want to win the quidditch cup this year, we need to start early!', author_id: user2.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'As if gryffindor will win the cup this year... keep dreaming Potter', author_id: user5.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'I forgot this was a school-wide channel', author_id: user2.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'I\'ll make a private one right after I draw up some training diagrams', author_id: user10.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'It\'s no use ?????no amount of practice will help you beat us', author_id: user5.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'Shove off, Malfoy', author_id: user2.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: '^', author_id: user8.id, messageable_type: "Channel", messageable_id: channel4.id)
Message.create(body: 'Well said, Harry', author_id: user9.id, messageable_type: "Channel", messageable_id: channel4.id)

# gryffindor house
Message.create(body: 'GALLONS OF GALLEONS!', author_id: user9.id, messageable_type: "Channel", messageable_id: channel5.id)
Message.create(body: 'Pocket money failing to keep pace with your outgoings? Like to earn a little extra gold?', author_id: user8.id, messageable_type: "Channel", messageable_id: channel5.id)
Message.create(body: 'Contact Fred and I for simple, part-time, virtually painless jobs.', author_id: user9.id, messageable_type: "Channel", messageable_id: channel5.id)
Message.create(body: '(We regret that all work is undertaken at applicant???s own risk.)', author_id: user8.id, messageable_type: "Channel", messageable_id: channel5.id)
Message.create(body: 'You are the limit.', author_id: user1.id, messageable_type: "Channel", messageable_id: channel5.id)

#transfig
Message.create(body: 'Transfiguration is some of the most complex and dangerous magic you will learn at Hogwarts.', author_id: user7.id, messageable_type: "Channel", messageable_id: channel6.id)
Message.create(body: 'Anyone messing around in my class will leave and not come back. You have been warned.', author_id: user7.id, messageable_type: "Channel", messageable_id: channel6.id)
Message.create(body: 'You said the same thing to us in our first year, Professor!', author_id: user3.id, messageable_type: "Channel", messageable_id: channel6.id)
Message.create(body: 'Yes, Weasley, and as you and Mr. Potter were having a sword fight with fake wands at the back of my class today, I suggest you listen well', author_id: user7.id, messageable_type: "Channel", messageable_id: channel6.id)
Message.create(body: 'Yes, Professor', author_id: user3.id, messageable_type: "Channel", messageable_id: channel6.id)
Message.create(body: 'On top of your essay on Chapters 1 to 13, be sure to practice vanishing spells for homework.', author_id: user7.id, messageable_type: "Channel", messageable_id: channel6.id)

#care of magical creatures
Message.create(body: 'Alright, everybody, listen up!', author_id: user12.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'This year I\'ve got a real treat for your first day back', author_id: user12.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'So meet me at the edge of the forest at the beginning of class', author_id: user12.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'I am not going into the Forbidden Forest.', author_id: user5.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'When my father hears about this...', author_id: user5.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'Scared, Malfoy?', author_id: user2.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'Of course not!', author_id: user5.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'Yeah? Then quit whining', author_id: user3.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'Alright, settle down', author_id: user12.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'What kind of surprise, Hagrid?', author_id: user1.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'Don\'t worry yourself about it now, but it\'s a good one!', author_id: user12.id, messageable_type: "Channel", messageable_id: channel7.id)
Message.create(body: 'Don\'t be late for class you lot, there\'s a lot to do tomorrow', author_id: user12.id, messageable_type: "Channel", messageable_id: channel7.id)

# channel9 = Channel.create(title: 'order-of-the-phoenix-hq')
Message.create(body: 'The Weasley children, Harry, and Hermione are coming to HQ', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'I\'ve already notified Sirius about the change in holiday plans', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'What has happened?', author_id: user17.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'Arthur Weasley has been injured in his work for the Order', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'Voldemort\'s snake attacked him at his post', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'How do you know this?', author_id: user17.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'I saw it bite Mr. Weasley', author_id: user2.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'Potter', author_id: user17.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'What do you mean, you saw it?', author_id: user17.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'I had a sort of', author_id: user2.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'vision', author_id: user2.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'Explain yourself, Potter', author_id: user17.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'I will fill you in shortly, Severus', author_id: user7.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'I\'ve just given Umbridge an excuse of the students\' absence, I\'m on my way to your office now', author_id: user7.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'A reminder to all: do not send the address of headquarters through Leeway or owl post', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'This channel should be secure, but most methods of communication are being monitored by Umbridge', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)
Message.create(body: 'And we can\'t be too careful.', author_id: user6.id, messageable_type: "Channel", messageable_id: channel9.id)


#DIRECT MESSAGES
#Harry, Ron, Hermione, Hagrid
Message.create(body: 'Hey you three', author_id: user12.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Fancy coming down after lunch for some tea?', author_id: user12.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'I\'ve got something to show you!', author_id: user12.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Sounds good, Hagrid!', author_id: user2.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Yeah, definitely', author_id: user3.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'What do you want to show us??', author_id: user1.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'It better not be another monster spider...', author_id: user3.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Don\'t worry, nothing like that', author_id: user12.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Aragog\'s safely in his den at the mo, just checked in on him earlier today', author_id: user12.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Oh gooooood', author_id: user2.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'Yes, wouldn\'t want anything to happen to it', author_id: user3.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'ANYWAY', author_id: user1.id, messageable_type: "Channel", messageable_id: dm1.id)
Message.create(body: 'We\'ll see you tomorrow, Hagrid :)', author_id: user1.id, messageable_type: "Channel", messageable_id: dm1.id)


#Oliver Wood
Message.create(body: 'Hey Harry, have you ordered a new broom yet?', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Nope', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'What?!', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'You best get a move on! The quidditch match against Slytherin is next Saturday! You can\'t ride a school broom... they\'re older than Dumbledore!', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'I got a Firebolt for Christmas', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'A FIREBOLT?', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'No wayyy', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Really??', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Yeah, but don\'t get your hopes up... McGonagall conviscated it :(', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'But she wants to win the Cup as much as we do!', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'She thinks the broom was sent by Sirius Black', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'He\'s supposed to be after me...', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Sirius Black? How could the most wanted man in Britain walk into Quality Quidditch Supplies and buy a Firebolt?', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Dunno, but McGonagall says that they have to strip it down before I can have it back', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Strip it down?', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: '????????????', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'Yeah, I know ??????', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'I\'ll talk to her, Harry. I\'ll make her see sense.', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'A Firebolt... A real Firebolt on the team...', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'In the meantime, maybe order a Nimbus 2001. That\'s what Malfoy\'s got.', author_id: user10.id, messageable_type: "Channel", messageable_id: dm2.id)
Message.create(body: 'I am not buying anything Malfoy thinks is good.', author_id: user2.id, messageable_type: "Channel", messageable_id: dm2.id)

#Colin Creevey
Message.create(body: 'Hiya Harry!!!', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'Alright, Harry?', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'My friends and I are heading down to the lake, Harry, wanna join?', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'Errr no Colin, thanks though', author_id: user2.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'I\'ve got to', author_id: user2.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'Do some work today... don\'t want to fall behind', author_id: user2.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'Oooh got it!', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'But you\'re the top of the class, right Harry, so you don\'t need to worry about that, right?', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'Well, come sit with us at dinner, then!', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'And maybe Dennis can take a picture of us, and you can sign it?', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)
Message.create(body: 'So I can prove to everyone back home that I\'ve met you!', author_id: user16.id, messageable_type: "Channel", messageable_id: dm3.id)

#McGonagall
Message.create(body: 'Hi Professor', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'I was wondering if I could have my broom back?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'Surely you\'ve done enough testing, and the match is in less than two weeks', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'No Potter, we\'ve not finished yet.', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'But', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'Potter! I shall let you know when you may have it back.', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'There\'s nothing wrong with it!!', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'I know it', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'There\'s no way you could know that', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'Professor Flitwick thinks that there may be a hurling hex on it', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: '????', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'Quit moping, Potter, and prepare for your career consultation', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'You\'ll be meeting with me at 2pm on Friday', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'And try not to lose your temper at Dolores Umbridge in the meantime', author_id: user7.id, messageable_type: "Channel", messageable_id: dm4.id)
Message.create(body: 'Yes, Professor', author_id: user2.id, messageable_type: "Channel", messageable_id: dm4.id)

#Neville
Message.create(body: 'Hey Harry', author_id: user4.id, messageable_type: "Channel", messageable_id: dm5.id)
Message.create(body: 'Could you let me into the Common Room?', author_id: user4.id, messageable_type: "Channel", messageable_id: dm5.id)
Message.create(body: 'I\'ve forgotten the password again...', author_id: user4.id, messageable_type: "Channel", messageable_id: dm5.id)
Message.create(body: 'No problem Neville', author_id: user2.id, messageable_type: "Channel", messageable_id: dm5.id)
Message.create(body: 'The password is tapeworm', author_id: user2.id, messageable_type: "Channel", messageable_id: dm5.id)
Message.create(body: 'Oh! Thanks Harry', author_id: user4.id, messageable_type: "Channel", messageable_id: dm5.id)

# Ron
Message.create(body: 'Hey mate', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Have you seen my maroon pajamas?', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'I haven\'t seen them, no', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Also, at the DA meeting, which one was Michael Corner', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'The one who\'s dating Ginny?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Yes????', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'The dark haired one who partnered with her for Stunning spells', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'That was him??', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'He did a pathetic job', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'LOL would you rather him jinx your sister?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Would be a good excuse to take him down', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Hahahah didn\'t you say you were going to take the news well', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Who\'s not take anything well??', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'I am taking it well!', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Okayyy Ron', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Listen, can I have a go on your broom later?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Since Umbridge has my Firebolt locked in the dungeons', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Yeah definitely', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'I\'ve heard that she\'s gotten a security troll to guard it', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Wouldn\'t put it past her', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'How about after quidditch practice?', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'Excellent', author_id: user2.id, messageable_type: "Channel", messageable_id: dm6.id)
Message.create(body: 'I\'m heading off now, I\'ll see you after', author_id: user3.id, messageable_type: "Channel", messageable_id: dm6.id)

# dm7 = Channel.create(title: 'Hermione Granger', is_dm: true)
Message.create(body: 'Harry, have you seen my copy of Numerology and Grammatica?', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Nope', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Ron may have borrowed it for some light reading', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: '???????????? LOL', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Well let me know if you find it in the common room or anything', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Sure', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Found it! Crookshanks was sitting on it', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Nice!', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Since I\'ve been banned from the quidditch team by Umbdrige', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Do you want to head down to the lake to study while Ron\'s at quidditch practice?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Sounds good!', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'I\'ve already finished my work, but I can help you with the History of Magic essay if you need', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Thanks Hermione, you\'re a lifesaver', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: '????', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'I\'ll bring some wool to knit more hats for the houseelves', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Hermione', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Where will you be over Christmas holiday?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'I was planning to go skiing with my parents', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'But now that Mr. Weasley\'s injured...', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'I think Dumbledore will let me join you all at headquarters after school lets out', author_id: user1.id, messageable_type: "Channel", messageable_id: dm7.id)
Message.create(body: 'Ok, see you soon then :)', author_id: user2.id, messageable_type: "Channel", messageable_id: dm7.id)


# dm8 golden trio
Message.create(body: 'Harry, are you there?', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Harry, mate, we\'re getting worried', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Why aren\'t you answering any of our letters?', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Did Errol get lost during the delivery again?', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Hey Ron, Hermione!', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Finally! Harry, where have you been???', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Sorry, your messages just came through', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'The Dursley\'s haven\'t given me the wifi password all summer', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'AND they wouldn\'t let me use Hedwig to reply your letters', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Who\'s Errol?', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Errol\'s the family owl... useless thing', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'He can\'t do long journeys, and he collapses all the time', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Oh well, we only have one more week until school starts', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Thank Godric', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'If I have to watch Dudley fit an entire hamburger in his mouth one more time...', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'LOL is he still dieting?', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Unsuccessfully', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Anyway, Ron and I are going to Diagon Alley this Thursday to get our school things', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Do you think you can join?', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'I\'ll ask my aunt and uncle, but I\'m not sure they\'ll agree', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Dad can come pick you up and you can use floo powder to get there', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'They\'ve said yes!', author_id: user2.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'Excellent!', author_id: user3.id, messageable_type: "Channel", messageable_id: dm8.id)
Message.create(body: 'See you there, Harry!', author_id: user1.id, messageable_type: "Channel", messageable_id: dm8.id)

# weasleys
Message.create(body: 'Hey folks, mum just wrote', author_id: user8.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'She and dad are going to Egypt for Christmas to visit Bill', author_id: user8.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'They\'re abandoning us', author_id: user9.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'So we\'re all staying at school over the holidays?', author_id: user11.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Suppose so', author_id: user3.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Cool', author_id: user2.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Not so cool when you think about eating Christmas supper with Umbridge', author_id: user8.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: '????', author_id: user11.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'We could always take the secret passage to Hogsmeade and spend Christmas Eve at the Three Broomsticks!', author_id: user2.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Harry!!', author_id: user1.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Whaaat', author_id: user2.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Harry! What an excellent idea', author_id: user8.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: '^^^', author_id: user3.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'We can\'t sneak into Hogsmeade!', author_id: user1.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'If Umbridge caught us, we\'ll all be expelled for sure', author_id: user1.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Not to mention how angry Mrs. Weasley would be', author_id: user1.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Hate to say it but', author_id: user3.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Mum angry is not something I love to see', author_id: user3.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'LOL remember that Howler she sent you for flying that car with Harry to school?', author_id: user11.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Vividly.', author_id: user3.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Ronniekins turned so red', author_id: user9.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Shut up', author_id: user3.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Oooh snappy retort', author_id: user9.id, messageable_type: "Channel", messageable_id: dm9.id)
Message.create(body: 'Yeah I really don\'t know how you think of these, Ron', author_id: user8.id, messageable_type: "Channel", messageable_id: dm9.id)


Permission.destroy_all
# CHANNELS
# DA
Permission.create(user_id: user1.id, channel_id: channel1.id)
Permission.create(user_id: user2.id, channel_id: channel1.id)
Permission.create(user_id: user3.id, channel_id: channel1.id)
Permission.create(user_id: user4.id, channel_id: channel1.id)
Permission.create(user_id: user8.id, channel_id: channel1.id)
Permission.create(user_id: user9.id, channel_id: channel1.id)
Permission.create(user_id: user11.id, channel_id: channel1.id)
Permission.create(user_id: user16.id, channel_id: channel1.id)

# general
Permission.create(user_id: user1.id, channel_id: channel2.id)
Permission.create(user_id: user2.id, channel_id: channel2.id)
Permission.create(user_id: user3.id, channel_id: channel2.id)
Permission.create(user_id: user4.id, channel_id: channel2.id)
Permission.create(user_id: user5.id, channel_id: channel2.id)
Permission.create(user_id: user6.id, channel_id: channel2.id)
Permission.create(user_id: user7.id, channel_id: channel2.id)
Permission.create(user_id: user8.id, channel_id: channel2.id)
Permission.create(user_id: user9.id, channel_id: channel2.id)
Permission.create(user_id: user10.id, channel_id: channel2.id)
Permission.create(user_id: user11.id, channel_id: channel2.id)
Permission.create(user_id: user12.id, channel_id: channel2.id)
Permission.create(user_id: user13.id, channel_id: channel2.id)
Permission.create(user_id: user14.id, channel_id: channel2.id)
Permission.create(user_id: user15.id, channel_id: channel2.id)
Permission.create(user_id: user16.id, channel_id: channel2.id)
Permission.create(user_id: user17.id, channel_id: channel2.id)

# quidditch
Permission.create(user_id: user2.id, channel_id: channel4.id)
Permission.create(user_id: user3.id, channel_id: channel4.id)
Permission.create(user_id: user5.id, channel_id: channel4.id)
Permission.create(user_id: user8.id, channel_id: channel4.id)
Permission.create(user_id: user9.id, channel_id: channel4.id)
Permission.create(user_id: user10.id, channel_id: channel4.id)
Permission.create(user_id: user11.id, channel_id: channel4.id)
Permission.create(user_id: user13.id, channel_id: channel4.id)
Permission.create(user_id: user14.id, channel_id: channel4.id)
Permission.create(user_id: user15.id, channel_id: channel4.id)

# gryffindor
Permission.create(user_id: user1.id, channel_id: channel5.id)
Permission.create(user_id: user2.id, channel_id: channel5.id)
Permission.create(user_id: user3.id, channel_id: channel5.id)
Permission.create(user_id: user4.id, channel_id: channel5.id)
Permission.create(user_id: user8.id, channel_id: channel5.id)
Permission.create(user_id: user9.id, channel_id: channel5.id)
Permission.create(user_id: user10.id, channel_id: channel5.id)
Permission.create(user_id: user11.id, channel_id: channel5.id)
Permission.create(user_id: user13.id, channel_id: channel5.id)
Permission.create(user_id: user14.id, channel_id: channel5.id)
Permission.create(user_id: user15.id, channel_id: channel5.id)

# transfiguration
Permission.create(user_id: user1.id, channel_id: channel6.id)
Permission.create(user_id: user2.id, channel_id: channel6.id)
Permission.create(user_id: user3.id, channel_id: channel6.id)
Permission.create(user_id: user4.id, channel_id: channel6.id)
Permission.create(user_id: user5.id, channel_id: channel6.id)
Permission.create(user_id: user7.id, channel_id: channel6.id)
Permission.create(user_id: user8.id, channel_id: channel6.id)
Permission.create(user_id: user9.id, channel_id: channel6.id)
Permission.create(user_id: user10.id, channel_id: channel6.id)
Permission.create(user_id: user11.id, channel_id: channel6.id)

# care of magical creatures
Permission.create(user_id: user1.id, channel_id: channel7.id)
Permission.create(user_id: user2.id, channel_id: channel7.id)
Permission.create(user_id: user3.id, channel_id: channel7.id)
Permission.create(user_id: user4.id, channel_id: channel7.id)
Permission.create(user_id: user5.id, channel_id: channel7.id)
Permission.create(user_id: user8.id, channel_id: channel7.id)
Permission.create(user_id: user9.id, channel_id: channel7.id)
Permission.create(user_id: user11.id, channel_id: channel7.id)
Permission.create(user_id: user12.id, channel_id: channel7.id)

#order of phoenix
Permission.create(user_id: user1.id, channel_id: channel9.id)
Permission.create(user_id: user2.id, channel_id: channel9.id)
Permission.create(user_id: user3.id, channel_id: channel9.id)
Permission.create(user_id: user6.id, channel_id: channel9.id)
Permission.create(user_id: user7.id, channel_id: channel9.id)
Permission.create(user_id: user8.id, channel_id: channel9.id)
Permission.create(user_id: user9.id, channel_id: channel9.id)
Permission.create(user_id: user11.id, channel_id: channel9.id)
Permission.create(user_id: user17.id, channel_id: channel9.id)

# DIRECT MESSAGES
Permission.create(user_id: user1.id, channel_id: dm1.id)
Permission.create(user_id: user2.id, channel_id: dm1.id)
Permission.create(user_id: user3.id, channel_id: dm1.id)
Permission.create(user_id: user12.id, channel_id: dm1.id)

Permission.create(user_id: user2.id, channel_id: dm2.id)
Permission.create(user_id: user10.id, channel_id: dm2.id)

Permission.create(user_id: user2.id, channel_id: dm3.id)
Permission.create(user_id: user16.id, channel_id: dm3.id)

Permission.create(user_id: user2.id, channel_id: dm4.id)
Permission.create(user_id: user7.id, channel_id: dm4.id)

Permission.create(user_id: user2.id, channel_id: dm5.id)
Permission.create(user_id: user4.id, channel_id: dm5.id)

Permission.create(user_id: user2.id, channel_id: dm6.id)
Permission.create(user_id: user3.id, channel_id: dm6.id)

Permission.create(user_id: user2.id, channel_id: dm7.id)
Permission.create(user_id: user1.id, channel_id: dm7.id)

# trio
Permission.create(user_id: user1.id, channel_id: dm8.id)
Permission.create(user_id: user2.id, channel_id: dm8.id)
Permission.create(user_id: user3.id, channel_id: dm8.id)

#weasleys
Permission.create(user_id: user1.id, channel_id: dm9.id)
Permission.create(user_id: user2.id, channel_id: dm9.id)
Permission.create(user_id: user3.id, channel_id: dm9.id)
Permission.create(user_id: user8.id, channel_id: dm9.id)
Permission.create(user_id: user9.id, channel_id: dm9.id)
Permission.create(user_id: user11.id, channel_id: dm9.id)
