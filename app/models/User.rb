require 'pry'
class User 
    attr_reader :name

    @@all = []
    def initialize(name)
        @name =  name
        @@all << self
    end

    # instance
    def recipes
        find_recipecard.map{|recipecard| recipecard.recipe}
    end

    def find_recipecard
        RecipeCard.all.select{|recipecard|recipecard.user == self}
    end

    def add_recipe_card(recipe,rating, date)
        RecipeCard.new(self, recipe, rating, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select{|allergy| allergy.user == self}
    end

    def top_three_recipes
        find_ratings.max(3)
    end
    
    def most_recent_recipe
        find_recipecard.max_by{|recipecard| recipecard.date.to_i}.recipe
    end

    def find_ratings
        find_recipecard.map{|recipecard| recipecard.rating}.sort
    end

    # class
    def self.all
        @@all
    end

    def safe_recipes
        safe_recipes = Recipe.all
        safe_recipes.map do |recipe|
            ingredients = recipe.ingredient
            ingredients.each do|ingredient| 
             
            if allergens.map{|allergen| allergen.ingredient}.include?(ingredient)
                safe_recipes.delete(recipe)
            end
            end
        end
        safe_recipes
    end
end