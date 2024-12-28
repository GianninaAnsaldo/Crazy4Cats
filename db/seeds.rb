# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  User.create!([
    { name: Faker::Name.name, email: Faker::Internet.email, password: 'password' }
])

20.times do
  Post.create!([
    { title: Faker::Creature::Cat.name + "'s Adventure", content: Faker::Lorem.paragraph, created_at: Faker::Time.between(from: 30.days.ago, to: Date.today)}
  ])
end

# Reacciones
#30.times do
#  Reaction.create!(
#    user: users.sample,
#    post: posts.sample,
#    reaction_type: %w[like dislike].sample
#  )
#end

# Comentarios
50.times do
  Comment.create!(
    content: Faker::Lorem.sentence,
    user: users.sample,
    post: posts.sample
  )
end