# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Creature.delete_all

3.times do
  create_creature = [{
  name: FFaker::CheesyLingo.title,
  description: FFaker::CheesyLingo.words,
  delete_flag: false,
  link: FFaker::Avatar.image,
  }]
  Creature.create(create_creature)
end

1.times do
  create_creature = [{
  name: FFaker::CheesyLingo.title,
  description: FFaker::CheesyLingo.words,
  delete_flag: true,
  link: FFaker::Avatar.image,
  }]
  Creature.create(create_creature)
end
