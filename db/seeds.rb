# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Creature.delete_all


create_creature = [
  {
  name: "Hungarian Horntail",
  description: "Hungarian Horntails can shoot fire at quite a range; as far as 50 feet. Horntails are especially dangerous, with yellow eyes, black scales, bronze horns and spikey tails.",
  delete_flag: false,
  link: "https://images.pottermore.com/bxd3o8b291gf/3rrY5otE2cUoaoc4ckaKM8/c2e142feadaa4d951caa441bc1d19def/Dragon_WB_F4_HungarianHorntail_Illust_100615_Land.jpg?w=910&q=85"
  },
  {
  name: "Chinese Fireball",
  description: "The Chinese Fireball is also sometimes called ‘Liondragon’ and has a slew of golden spikes on the periphery of its snub-snouted face. The dragon’s eggs are crimson and specked with gold, and their shells are cherished among Chinese wizards.",
  delete_flag: false,
  link: "http://vignette4.wikia.nocookie.net/harrypotter/images/d/df/Chinese_Fireball.png/revision/latest?cb=20161129175906"
  },
  {
  name: "Common Welsh Green",
  description: "In 1932 a rogue Common Welsh Green flew onto a beach of sunbathing Muggles. Their memories were subsequently wiped by a vacationing family of wizards who were fortuitously at the scene. The Welsh Green blends in well with grass and dwells mostly on a mountain-based reservation established for its preservation.",
  delete_flag: false,
  link: "https://images.pottermore.com/bxd3o8b291gf/7AU5jDXobYSAmm8mui0W0G/8e4dcc736a3ba12cc27aeae00818b7b4/Dragon_WB_F4_WelshGreen_V1_Illust_100615_Land.jpg?w=601&h=339&fit=thumb&f=top&q=85"
  },
  {
  name: "Ukrainian Ironbelly",
  description: "This dragon is the largest breed in the wizarding world. It has metallic grey scales, deep red eyes and long, vicious talons.
  Although never formally identified, the dragon Harry, Ron and Hermione meet in the vaults of Gringotts could well be a Ukrainian Ironbelly. It is described as having pale scales, ‘milkily pink’ eyes and a yellow underbelly. Perhaps its red eyes had faded to pink over those many years underground.",
  delete_flag: false,
  link: "https://images.pottermore.com/bxd3o8b291gf/5wYEvpPzb2kY0maCm4e0iK/da7a251846e7a2a988945c2ad20e9987/Dragon_PM_B7C26M1_DragonInGringotts_Moment.jpg?w=601&h=339&fit=thumb&f=top&q=85"
  },
  {
  name: "Hebridean Black",
  description: "Named for the Hebrides, the islands off the west coast of Scotland, these dragons can be up to 30 feet in length. The Hebridean Black is covered in rough scales and sharp ridges on its back. It has purple eyes, an arrow-shaped spike on its tail and bat-like wings.",
  delete_flag: false,
  link: "https://img00.deviantart.net/56bd/i/2014/364/c/3/hebridean_black_by_ruchiel-d8bt6iv.png"
  },
  {
  name: "Romanian Longhorn",
  description: "These dragons are named for their long, golden horns that they use to stab prey. Their horns are so widely sought after that the breed started to reduce in numbers, prompting a breeding programme.
  Their native Romania has become the location where wizards from around the world study dragons of all breeds.",
  delete_flag: false,
  link: "http://orig11.deviantart.net/3bc9/f/2016/258/d/f/forest_dragon_by_sandara-dahpdw1.jpg"
  },
  {
  name: "Norwegian Ridgeback",
  description: "Its spiny wings were huge compared to its skinny jet body and it had a long snout with wide nostrils, stubs of horns and bulging, orange eyes. They’ve been known to feed on water-dwelling creatures. For instance, in 1802 a Norwegian Ridgeback supposedly took a whale calf right off the coast of Norway.",
  delete_flag: false,
  link: "https://images.pottermore.com/bxd3o8b291gf/3T7KHIYat2q48Cgq60iwEk/90998789eb10bb57c41b24db3b7c5966/Norbert_WB_F1_ConceptOfAYoungNorbert_Illust_080615_.LandTIF.jpg?w=320&q=85"
  },
  {
  name: "Peruvian Vipertooth",
  description: "These copper-coloured dragons have smooth scales and dangerously venomous fangs. While they’re the smallest known dragons, the breed has a taste for humans. In the late nineteenth century the International Confederation of Wizards was forced to send in exterminators to reduce their numbers.",
  delete_flag: false,
  link: "http://pm1.narvii.com/6267/232324b3cb5ad3f52fa87b338a970ce0d32fa5f9_hq.jpg"
  },
]
  Creature.create(create_creature)

# 3.times do
#   create_creature = [{
#   name: FFaker::CheesyLingo.title,
#   description: FFaker::CheesyLingo.words,
#   delete_flag: false,
#   link: FFaker::Avatar.image,
#   }]
#   Creature.create(create_creature)
# end
#
# 1.times do
#   create_creature = [{
#   name: FFaker::CheesyLingo.title,
#   description: FFaker::CheesyLingo.words,
#   delete_flag: true,
#   link: FFaker::Avatar.image,
#   }]
#   Creature.create(create_creature)
# end
