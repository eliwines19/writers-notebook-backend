# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(
    username: 'thebombdotcom',
    password: '1234567'
)

user2 = User.create(
    username: 'that-Guy_ritchie',
    password: 'richardistheman'
)

user3 = User.create(
    username: 'Borat',
    password: 'verynice'
)

user4 = User.create(
    username: 'dog_lover_kate',
    password: 'iheartmypoodle'
)

user5 = User.create(
    username: 'hippydippy',
    password: 'farout99'
)

story1 = user1.story_ideas.create(
    name: 'Forrest Gump 2',
    setting: 'Greenbow, Alabama',
    plot: 'Forrest Gumps son (Forrest Gump Jr.) turns out to be a super genius, becomes the CEO of Amazon, and Forrest Gump Sr. supports him through the whole thing.',
    conflict: 'Forrest Gump Jr. fights Jeff Bezos for the CEO position.',
    theme: 'Listen to your parents',
    pov: 'Forrest Gump Sr.',
    tone: 'optimistic',
    style: 'Descriptive'
)

character1 = story1.characters.create(
    name: 'Jeff Bezos',
    biology: 'Human/Robot',
    hero: false,
    villain: true,
    description: 'The evil Jeff Bezos will stop at nothing to keep control over Amazon... AND THE WORLD.',
    story_idea_id: story1.id,
    user_id: user1.id
)

comment1 = story1.comments.create(
    text: 'awesome idea, maybe you should make Jeff Bezos like a Lex Luthor type of supervillain.',
    user_id: user3.id
)

story2 = user2.story_ideas.create(
    name: 'The Winners',
    setting: 'small town in Texas',
    plot: 'A high school football team experiences a terrible tragedy, they must band together if they are going to come out on top.',
    conflict: 'A bus crash leaves the teens injured and a few dead, they have to face their inner demons to prevail.',
    theme: 'inner strength is created through adversity.',
    pov: 'The Quarterback for the football team.',
    tone: 'starts off grim, ends radiating positivity.',
    style: 'Narrative'
)

character2 = story2.characters.create(
    name: 'Bucky',
    biology: 'Human',
    hero: true,
    villain: false,
    description: 'The quarterback of the football team. He is a leader and a great friend',
    story_idea_id: story2.id,
    user_id: user2.id
)

comment2 = story2.comments.create(
    text: 'VERY NICE',
    user_id: user3.id
)

comment3 = story2.comments.create(
    text: 'I agree with Borat, sounds like a greate story!',
    user_id: user5.id
)

story3 = user3.story_ideas.create(
    name: 'Hulk Smash',
    setting: 'Planet Earth',
    plot: 'After becoming a hybrid of both The Hulk and Brucer Banner, Bruce begins to have weird visions of violence towards the other Avengers. He must fight these inner demons, as well as some of the Avengers.',
    conflict: 'Bruce Banner has a battle with his inner demons.',
    theme: 'Hide all you want, your true feelings come out eventually.',
    pov: 'Bruce Banner',
    tone: 'desperate',
    style: 'Narrative'
)

character3 = story3.characters.create(
    name: 'Janet',
    biology: 'some alien species',
    hero: false,
    villain: true,
    description: 'She is the villain that temps the hulk with violence and turns him against his team',
    story_idea_id: story3.id,
    user_id: user3.id
)

comment4 = story3.comments.create(
    text: 'Sounds kinda lame, I dont think the Russo brothers will agree with you on this one.',
    user_id: user1.id
)

comment5 = story3.comments.create(
    text: 'Very imaginitive, I agree with thebombdotcom though I dont think the Russo bros will agree',
    user_id: user4.id
)

comment6 = story3.comments.create(
    text: 'VERY NICE',
    user_id: user3.id
)

story4 = user4.story_ideas.create(
    name: 'Dog Knows Best',
    setting: 'New York City',
    plot: 'A silly dog is a little girls only hope of making it to prom on time!',
    conflict: 'A girl had her prom dress stolen and sends her dog to get it back for her.',
    theme: 'Dogs are the best',
    pov: 'The dog',
    tone: 'Energetic',
    style: 'Descriptive'
)

character4 = story4.characters.create(
    name: 'Bentley',
    biology: 'Dog',
    hero: true,
    villain: false,
    description: 'The most corageous dog the world has ever seen, and a loyal dog to his owner',
    story_idea_id: story4.id,
    user_id: user4.id
)

comment7 = story4.comments.create(
    text: '....not nice',
    user_id: user4.id
)

story5 = user5.story_ideas.create(
    name: 'Aliens are Real',
    setting: 'Canada',
    plot: 'This Canadian dude finds some aliens hiding in a cave and tries to prove to his friends that hes not toally crazy',
    conflict: 'The Canadian dudes friends dont believe him',
    theme: 'seeing is believing',
    pov: 'Canadian dude',
    tone: 'crazy',
    style: 'Narrative'
)

character5 = story5.characters.create(
    name: 'Glugnut',
    biology: 'Martian',
    hero: false,
    villain: true,
    description: 'This crazy dude is trying to take over Canada!',
    story_idea_id: story5.id,
    user_id: user5.id
)

comment8 = story5.comments.create(
    text: 'duuuuuude I had an idea just like this one!!!',
    user_id: user5.id
)

comment9 = story5.comments.create(
    text: 'thats because its your story dumb dumb',
    user_id: user2.id
)

