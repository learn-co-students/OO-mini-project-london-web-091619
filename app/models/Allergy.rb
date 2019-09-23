class Allergy
  attr_reader :user, :ingredient

  @@all = []

  def self.all
    @@all
  end

  def self.ingredients
    all.map { |allergy| allergy.ingredient }
  end

  def save
    self.class.all << self
  end

  def initialize(user:, ingredient:)
    @user = user
    @ingredient = ingredient
    save
  end

end
