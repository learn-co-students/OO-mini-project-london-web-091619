class RecipeCard

    @@all = []

    attr_reader :date, :user, :recipe, :rating


    def initialize(user, date = Time.now, recipe, rating)

        @date = date
        @user = user
        @recipe = recipe
        @rating = rating
        @@all << self

    end 


    def self.all
        @@all
    end

end