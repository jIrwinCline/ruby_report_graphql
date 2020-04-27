# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    user = User.create!(fname: Faker::Name.name, lname: Faker::Name.name, email: Faker::Internet.email, dpsst: Faker::Number.number(digits: 6).to_s, password: 'password')
    2.times do
        entries = []
        5.times do
            i=0
            entries.push(Entry.new(time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), text: Faker::Lorem.paragraph(sentence_count:4), image: Faker::Lorem::sentence(word_count: 1)))
        end
        user.reports.create!(body: entries.map {|entry| entry.text}.join('\n'))
    end
end