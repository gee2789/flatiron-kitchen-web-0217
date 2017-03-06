# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.create(id: 1, name: "Hummus")
Ingredient.create(id: 1, name: "Chickpea")
Ingredient.create(id: 2, name: "Tahini")
