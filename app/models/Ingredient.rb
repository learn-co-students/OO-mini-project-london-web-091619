class Ingredient 
    attr_reader :name 

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end

   

    def find_allergies
        Allergy.all.select{|allergy| allergy.ingredient == self}
    end




    # class

    def self.most_common_allergen
        @@all.max_by{|ingredient| ingredient.find_allergies.count}
    end

    def self.all
        @@all
    end
end