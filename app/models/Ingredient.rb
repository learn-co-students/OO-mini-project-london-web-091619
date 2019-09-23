class Ingredient
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.most_common_allergen
    all.max_by { |ingredient| Allergy.ingredients.count(ingredient) }
  end

  def save
    self.class.all << self
  end

  def initialize(name)
    @name = name
    save
  end
end
