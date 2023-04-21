require 'csv'
# require 'faker'

puts 'Importing categories 4 ...'
CSV.foreach(Rails.root.join('db/seeds/categories.csv'), headers: true) do |row|
  Category.create! do |category|
    category.id = row[0]
    category.name = row[1]
  end
end

# puts 'Importing cities 20...'
# 20.times do
#   city = City.new(
#     name: Faker::Address.city,
#   )
#   city.save!
# end
