class RecipeCard
attr_reader :user, :recipe, :rating, :date

    @@all = []

    def initialize(date, rating, user, recipe)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end
