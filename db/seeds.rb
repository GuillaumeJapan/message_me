# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
User.create(username: "guillaume", password: "guillaume")
User.create(username: "john", password: "john")
User.create(username: "bob", password: "bob")
User.create(username: "squall", password: "squall")

# Messages
Message.create(body: "First message", user: User.first)
Message.create(body: "Second message", user: User.last)
Message.create(body: "Third message", user: User.first)
Message.create(body: "Fourth message", user: User.last)