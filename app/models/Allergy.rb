class Allergy

    @@all =[]

    attr_reader :user, :ingredient

    def initialize(user, ingredient)

        @user = user
        @ingredient = ingredient
        @@all << self

    end

    def self.ingredients
        all.map {|allergy| allergy.ingredient }
    end
    
    def self.all
        @@all
    end



end