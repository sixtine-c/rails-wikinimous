# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TODO: Write a seed to insert 100 posts in the database
Article.destroy_all

puts 'Creating 10 fake articles...'
10.times do
  post = Article.new(
    title: Faker::FunnyName.name,
    content: Faker::Lorem.paragraph
  )
  post.save!
end
puts 'Finished!'
