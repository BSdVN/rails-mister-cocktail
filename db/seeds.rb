# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

json = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read

ingredients = JSON.parse(json)

ingredients['drinks'].each do |ingredient|
  name = ingredient['strIngredient1']
  Ingredient.create(name: name)
end

json = open('https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic
').read

cocktails = JSON.parse(json)

cocktails['drinks'].each do |cocktail|
  name = cocktail['strDrink']
  Cocktail.create(name: name)
end
