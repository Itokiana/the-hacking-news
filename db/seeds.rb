# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# On cree le lien
l = Link.create(url: Faker::Internet.url)
# On cree le commentaire
c = LinkComment.create(comment: Faker::StarWars.quote)
# On cree le user
u1 = User.create(name: Faker::StarWars.character)
u2 = User.create(name: Faker::StarWars.character)

# Le lien appartient a l'user u1
l.user = u1
# le commentaire est lie au lien
c.link = l
# c'est le user u2 le proprietaire du commentaire
c.user = u2

# On sauvegarde
l.save
c.save
u.save