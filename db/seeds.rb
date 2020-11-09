# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# (1970..2021).each do |year|
#     x = year
#     y = year + 1
#     z = Season.create(years: "#{x}-#{y}")
#     z.save!
# end

# Faker::Sports::Basketball.team.each do |team|
#     Team.create(team: team)
#     puts '#{team} created'
# end
30.times do
    team = Faker::Sports::Basketball.unique.team
    Team.create(team: team)
    puts "created #{team}"
end