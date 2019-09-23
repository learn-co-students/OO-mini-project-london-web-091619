require_relative '../config/environment.rb'

flour = Ingredient.new('Flour')
egg = Ingredient.new('Egg')
bean = Ingredient.new('Bean')
nut = Ingredient.new('Nut')
milk = Ingredient.new('Milk')
cheese = Ingredient.new('Cheese')
pepper = Ingredient.new('Pepper')
lettuce = Ingredient.new('Lettuce')
carrot = Ingredient.new('Carrot')

dany = User.new('Dany')
brienne = User.new('Brienne')
daniel = User.new('Daniel')
gabriel = User.new('Gabriel')


pancake_ing = [flour, milk, egg]
omlette_ing = [egg, cheese, pepper ]
salad_ing = [lettuce, pepper, cheese, nut]
cake_ing = [milk, egg, carrot, flour]

pancake = Recipe.new('Pancake')
pancake.add_ingredients(pancake_ing)
omelette = Recipe.new('Omelette')
omelette.add_ingredients(omlette_ing )
salad = Recipe.new('Salad')
salad.add_ingredients(salad_ing)
cake = Recipe.new('Cake')
cake.add_ingredients(salad_ing)

dany.add_recipe_card(pancake, '2018-02-28', 150)
brienne.add_recipe_card(omelette, '2019-01-27', 100)
brienne.add_recipe_card(salad, '2019-03-21', 70)
gabriel.add_recipe_card(cake, '2019-05-12', 200)
brienne.add_recipe_card(pancake, '2018-06-22', 110)
dany.add_recipe_card(cake, '2019-08-10', 55)
brienne.add_recipe_card(cake, '2018-06-22', 95)



dany.declare_allergy(nut)
brienne.declare_allergy(egg)
gabriel.declare_allergy(milk)
# gabriel.declare_allergy(flour)
brienne.declare_allergy(cheese)



binding.pry

puts "mwahahahahaha"
