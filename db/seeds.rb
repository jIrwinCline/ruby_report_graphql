# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
    5.times do 
    user.entries.create(time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), text: Faker::Lorem.sentence(sentence_count:4), image: Faker::Lorem::paragraph(word_count: 1))     
    end
end