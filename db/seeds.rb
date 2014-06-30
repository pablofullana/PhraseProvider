# Creates between 100 and 200 Phrases from different Authors in 'Lorem' language
puts "Creating Phrases..."

rand(100...200).times do
  Phrase.create(
    content:  Faker::Lorem.sentence,
    author:   Faker::Name.name,
    language: 'Lorem'
  )
end

puts "Created #{Phrase.all.count} Phrases."
