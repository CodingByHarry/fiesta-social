# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'harry@codingbyharry.com', password: 'password', confirmed_at: Time.current)

fiesta_item1 = FiestaItem.create(
  name: 'Sword',
  icon: 'img.png',
  description: 'Attacks things',
  end: 5,
  spr: 10,
  int: 15,
  str: 30,
  dex: 40, 
)

fiesta_item2 = FiestaItem.create(
  name: 'Wand',
  icon: 'img.png',
  description: 'Attacks things magically',
  end: 7,
  spr: 10,
  int: 40,
  str: 1,
  dex: 40, 
)

item1 = Item.create(name: 'Sword', description: 'Attacks things', bin: 50000, user_id: user.id, fiesta_item_id: fiesta_item1.id)
item2 = Item.create(name: 'Wand', description: 'Attacks things with magic', bin: 0, user_id: user.id, fiesta_item_id: fiesta_item2.id)