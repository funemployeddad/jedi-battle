# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: 'test', password: 'test', email: 'test'}, {name: 'user2', password: 'test', email: 'email2'}])
Jedi.create(name: 'Luke', user: users.first, force_power: '5', health: '5')
Jedi.create(name: 'Anakin', user: users.last, force_power: '5', health: '5')
