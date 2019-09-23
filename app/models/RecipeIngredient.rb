class RecipeIngredient
attr_reader :ingridient, :recipe 

    @@all = []

    def initialize(ingridient, recipe)
        @ingridient = ingridient
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all 
    end

end
