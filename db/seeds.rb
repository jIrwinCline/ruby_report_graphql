# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i=0
5.times do
    i += 1
    user = User.create!(fname: Faker::Name.name, lname: Faker::Name.name, email: Faker::Internet.email, dpsst: Faker::Number.number(digits: 6).to_s, password: 'password', password_confirmation: 'password')
    2.times do
        entries = []
        # i = 0
        10.times do
            entries.push(Entry.create!(time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), text: Faker::Lorem.paragraph(sentence_count:4), image: Faker::Lorem::sentence(word_count: 1), default: true))
            # i++
        end
        user.reports.create!(body: entries.map {|entry| entry.text}.join('\n'))
    end
end

User.create(
  email: 'jci@pdx.edu',
  password: 'password',
  password_confirmation: 'password',
  fname: 'Jake',
  lname: 'Irwin',
  dpsst: '753253',
#   jti: '123XYZ123XYZ0'
)