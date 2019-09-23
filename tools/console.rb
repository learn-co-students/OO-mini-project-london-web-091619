require_relative '../config/environment.rb'


u1 = User.new("Tom")
u2 = User.new("Anna")
u3 = User.new("Ben")
u4 = User.new("Lisa")

r1 = Recipe.new("Pancakes")
r2 = Recipe.new("Pasta")
r3 = Recipe.new("Pizza")
r4 = Recipe.new("Taccos")

i1 = Ingredient.new("Eggs")
i2 = Ingredient.new("Flour")
i3 = Ingredient.new("Tomatoes")
i4 = Ingredient.new("Milk")

ri1 = RecipeIngredient.new(i1, r1)
ri2 = RecipeIngredient.new(i2, r2)
ri3 = RecipeIngredient.new(i3, r3)
ri4 = RecipeIngredient.new(i4, r4)

a1 = Allergy.new(u1, i1)
a2 = Allergy.new(u2, i2)
a3 = Allergy.new(u3, i3)
a4 = Allergy.new(u4, i4)
a4 = Allergy.new(u4, i4)

rc1 = RecipeCard.new(22, 5, u1, r1)
rc2 = RecipeCard.new(21, 3, u2, r2)
rc3 = RecipeCard.new(15, 4, u3, r3)
rc4 = RecipeCard.new(10, 2, u4, r4)

binding.pry
0