# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

3.times{
  user = User.new(email: Faker::Internet.email, password: 'azerty')
  user.save
    10.times{
	  island = Island.new(name: Faker::Movies::LordOfTheRings.location, location: Faker::Address.country, price: rand(1099..16000), description: Faker::ChuckNorris.fact)
      island.user = user
      island.save
  }
}
