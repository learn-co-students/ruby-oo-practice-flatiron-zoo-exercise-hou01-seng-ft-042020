class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo
    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    # def zoo
    #     self.zoo
    # end

    def self.find_by_species(find_species)
        Animal.all.select{|animal| animal.species == find_species}.uniq
    end
end
