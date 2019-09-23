class Recipe

@@all = []

attr_reader :name
def initialize(name)
    @name = name
    @@all << self
end



def cards
    RecipeCard.all.select{|card| card.recipe == self}
end

def users
    cards.map(&:user)
end

def ingredient_list
    RecipeIngredient.all.select{|ingredient| ingredient.recipe == self}
end    

def ingredients
    ingredient_list.map(&:ingredient)
end

def add_ingredients(ingredient_array)
    ingredient_array.map { |ingredient|
        RecipeIngredient.new(ingredient, self)
    }
end

def allergens 
     ingredients.select {|ingredient| Allergy.ingredients.include?(ingredient) }
end

def self.most_popular
    @@all.max_by {|recipe| recipe.users.length}
end



def self.all
    @@all
end


end