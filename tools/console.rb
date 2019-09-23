require_relative '../config/environment.rb'
recipe1 = Recipe.new('Pizza')
recipe2 = Recipe.new('Heroin')
recipe3 = Recipe.new('XTC')

# User
user1 = User.new('Tim')
user2 = User.new('Keg')
user3 = User.new('Mike Jackson')

# Ingredient
ingredient1 = Ingredient.new('Chilli')
ingredient2 = Ingredient.new('Mango')
ingredient3 = Ingredient.new('Water')

# Allergy 
allergy1 = Allergy.new(user1, ingredient1)
allergy2 = Allergy.new(user2, ingredient3)
allergy3 = Allergy.new(user3, ingredient3)

# Recipe Card 
rescard1 = RecipeCard.new(user1, recipe1, 8, "1")
rescard2 = RecipeCard.new(user1, recipe3, 10, "10")
rescard3 = RecipeCard.new(user1, recipe2, 3, "1")
rescard4 = RecipeCard.new(user1, recipe3, 10, "1002")


# Recipe Ingredient
resin1 = RecipeIngredient.new(recipe1, ingredient1)
resin2 = RecipeIngredient.new(recipe2, ingredient2)
resin3 = RecipeIngredient.new(recipe3, ingredient3)
binding.pry
