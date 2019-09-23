class RecipeIngredient
  attr_reader :recipe, :ingredient

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(recipe:, ingredient:)
    @recipe = recipe
    @ingredient = ingredient
    save
  end
end
