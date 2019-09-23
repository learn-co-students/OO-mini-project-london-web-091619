class Ingredient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end



    def self.all
        @@all
    end

    def allergies
        Allergy.all.select {|allergen| allergen.ingredient}
    end

    def self.most_common_allergen
        allergies.max_by{|allergen| allergies.count(allergen)}
    end 



end
