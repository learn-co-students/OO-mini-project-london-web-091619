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

    def allergy_count
        allergies = Allergy.all.select { |allergy| allergy.ingredient }.count
    end

    def self.most_common_allergen
        @@all.max_by { |ingredient| ingredient.allergy_count }
    end

end
