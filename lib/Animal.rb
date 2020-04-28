# require_relative "Zoo.rb"

class Animal

    attr_reader :nickname, :species
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

    def self.find_by_species(animal_species)
        #takes in animal's species
        #returns an array of all the animals, which are of that species
        self.all.select {|animal| animal.species == animal_species}
    end

end
