class Recipe
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name:)
    @name = name
    save
  end

  def recipecards
    RecipeCard.all.select { |recipecard| recipecard.recipe == self }
  end

  def users
    recipecards.map { |recipecard| recipecard.user }
  end

  def recipeingredients
    RecipeIngredient.all.select { |recipeingredient| recipeingredient.recipe == self }
  end

  def ingredients
    recipeingredients.map { |recipeingredient| recipeingredient.ingredient }
  end

  def allergens
    ingredients.select { |ingredient| Allergy.ingredients.include?(ingredient) }
  end

  def add_ingredients(ingredients)
    ingredients.each { |ingredient| RecipeIngredient.new(recipe: self, ingredient: ingredient) }
  end
end
