# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

adjectives = ["unique", "light", "lovely", "wonderful", "bohemian", "chic", "cosy", "beautiful", "gorgeous", "marvellous", "incredible", "spacious", "fancy", "delightful", "breathtaking", "inviting", "heavenly", "amazing", "irresistable", "stylish", "exquisite", "charming", "one of a kind"]
home_nouns = ["flat", "loft", "apartment", "studio", "villa", "mansion", "room"]
desc_nouns = ["vibe", "feel", "atmosphere", "mood", "ambiance", "feeling"]
acc_nouns = ["open plan", "balcony", "sauna", "terrace", "conservatory", "living room", "bed room", "kitchen", "garden", "green house", "view", "living area", "jacuzzi", "pool", "rooftop terrace"]

3.times do
  city = Faker::Address.city
  str_address = Faker::Address.street_address
  address = city + ", " + str_address
  home = home_nouns.sample

  Flat.create!(
    name: adjectives.sample.capitalize + " & " + adjectives.sample.capitalize + " " + home.capitalize + " " + city,
    address: address,
    description: "A #{adjectives.sample} #{desc_nouns.sample} for this #{adjectives.sample} #{home}. #{adjectives.sample.capitalize} #{acc_nouns.sample}, #{acc_nouns.sample}, and a #{adjectives.sample} #{acc_nouns.sample}",
    price_per_night: (20..300).to_a.sample,
    number_of_guests: (1..15).to_a.sample
  )
end
