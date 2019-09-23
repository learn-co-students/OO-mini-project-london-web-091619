require_relative '../config/environment.rb'

john = User.new
bob = User.new

carbonara = Recipe.new(name: 'carbonara')
salad = Recipe.new(name: 'salad')
sandwich = Recipe.new(name: 'sandwich')
spag_bol = Recipe.new(name: 'spag_bol')

today = Time.now
yesterday = today - 86400

recipecard1 = RecipeCard.new(user: john, recipe: salad, rating: 5, date: yesterday)
recipecard2 = RecipeCard.new(user: john, recipe: carbonara, rating: 10, date: today)
# recipecard3 = RecipeCard.new(user: john, recipe: sandwich, rating: 2, date: '25')
# recipecard4 = RecipeCard.new(user: john, recipe: spag_bol, rating: 3, date: '26')

sausage = Ingredient.new(name: 'sausage')
carrot = Ingredient.new(name: 'carrot')
apple = Ingredient.new(name: 'apple')
nut = Ingredient.new(name: 'nut')

salad.add_ingredients([apple, carrot, nut])
carbonara.add_ingredients([carrot, apple])

# salad_apple = RecipeIngredient.new(recipe: salad, ingredient: apple)
# salad_carrot = RecipeIngredient.new(recipe: salad, ingredient: carrot)
# salad_nut = RecipeIngredient.new(recipe: salad, ingredient: nut)

# allergy1 = Allergy.new(user: john, ingredient: sausage)
nut_allergy = Allergy.new(user: john, ingredient: nut)

binding.pry
0
