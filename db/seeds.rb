# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

# intiating list of ingredients
url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
info = JSON.parse(open(url).read)
# puts info
drink_a = info["drinks"]

drink_a.each do |element|
	ingr_name = element["strIngredient1"]
	ingredient = Ingredient.new(name: ingr_name)
	puts "#{ingredient.name} saved" if ingredient.save
end

puts "All done"