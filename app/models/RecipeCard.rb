class RecipeCard
  attr_reader :user, :recipe, :date, :rating

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(user:, recipe:, rating:, date:)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    save
  end
end
