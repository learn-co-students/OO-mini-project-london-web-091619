require "pry"

class User

    @@all = []

    attr_reader :name, :allergens

    def initialize (name)
        @name = name
        @@all << self
    end

    def recipes
        RecipeCard.all.select {|card| card.recipe == self}
    end

    def add_recipe_card(recipe, date,  rating)
        RecipeCard.new(self, date, recipe, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end

    def allergens
        Allergy.all.select {|ingredient| ingredient.user == self}
    end

    def get_recipecard
        RecipeCard.all.select{|recipecard| recipecard.user == self}
    end

    def find_ratings
        get_recipecard.map {|card| card}.sort_by(&:rating)
    end

    def top_three_recipes
        find_ratings.max_by(3) {|card| card.rating}
    end    

    def dates 
        recipes.sort_by!(&:date)
    end

    def most_recent_recipe
        dates.last
    end

    def self.all
        @@all
    end


end