class Recipe 
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    # Instance 
    def users
        find_recipecard.map{|recipecard| recipecard.user}
    end

    def find_recipecard
        RecipeCard.all.select{|recipecard|recipecard.recipe == self}
    end


    def ingredient
        RecipeIngredient.all.select{|recipeingredient|recipeingredient.recipe == self}.map{|recipeingredient| recipeingredient.ingredient}
    end

    def add_ingredients(ingredients)
        ingredients.each{|ingredient| RecipeIngredient.new(self,ingredient)}
    end

    def allergens
       x =  users.map{|user|user.allergens}[0]
       x.map{|allergy| allergy.ingredient}
    end

    #class
    def self.most_popular 
        @@all.max_by{|recipe|recipe.users.length}
    end

    def self.all
        @@all
    end

end