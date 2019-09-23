# has many ingredients. 
class Allergy
    attr_reader :user, :ingredient

    @@all = []
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end




    # class
    def self.all
        @@all
    end
end