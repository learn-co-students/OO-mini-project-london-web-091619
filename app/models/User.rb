class User

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select { |recipecards| recipecards.user == self }
    end

    def add_receipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        new_a = Allergy.new(self, ingredient)
    end

    def allergens
        user_allergy = Allergy.all.select { |ingredients| ingredients.user == self }
        allergy.user.map { | allgery| allergy.ingredient }
    end 

    def top_three_recipes
        all_ratings = recipe_cards.map { |recipecard| recipecard.rating }
        all_ratings.max(3)
    end

    def most_recent_recipe
        last_date = recipe_cards.map { |recipecard| recipecard.date }
        last_date.max(1)
    end
 
end
