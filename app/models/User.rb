# coding: utf-8
class User
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize
    save
  end

  def declare_allergy(ingredient)
    Allergy.new(user: self, ingredient: ingredient)
  end

  def recipecards
    RecipeCard.all.select { |recipecard| recipecard.user == self }
  end

  def top_three_recipes
    recipecards.max_by(3) { |recipecard| recipecard.rating }
  end

  def recipes
    recipecards.map { |recipecard| recipecard.recipe }
  end

  def add_recipe_card(recipe:, date:, rating:)
    RecipeCard.new(user: self, recipe: recipe, date: date, rating: rating)
  end

  def allergies
    Allergy.all.select { |allergy| allergy.user == self }
  end

  def allergens
    allergies.map { |allergy| allergy.ingredient }
  end

  def most_recent_recipe
    recipecards.max_by { |recipecard| recipecard.date }.recipe
  end

  def safe_recipes
    Recipe.all.select do |recipe|
      (allergens & recipe.ingredients).empty?
    end
  end
end
