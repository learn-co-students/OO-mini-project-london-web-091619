class Recipe
attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #will return all instances of RecipeCard which has users and recipe
    def recipe_cards
        RecipeCard.all.select { |recipecard| recipecard.recipe == self}
    end

    #will return only the users who are using the recipe
    def users
        recipe_cards.map { |recipecard| recipecard.user}
    end

    def self.most_popular
        @@all.max_by { |recipe| recipe.users.length }
    end

    def ingredients
        recipe_incredients = RecipeIngredient.all.select { |ingredient| ingredient.recipe == self }
        recipe_incredients.map { |ri| ri.ingredient }
    end

    def allergens
        allergy_ingredients = Allergy.all.map { |allergy| allergy.ingredient }
        allergy_ingredients.select { |ingredient| self.ingredients.include?(ingredient) }
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(ingredient, self)
        end
    end

end
