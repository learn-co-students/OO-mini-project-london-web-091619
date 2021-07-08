class RecipeIngredient
    attr_reader :recipe, :ingredient

    @@all = []
    def initialize(recipe, ingredient)
        @recipe = recipe 
        @ingredient = ingredient
        @@all << self
    end




    # class
    def self.all
        @@all
    end
end