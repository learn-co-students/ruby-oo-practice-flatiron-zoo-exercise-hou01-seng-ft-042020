class Zoo
    attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|animals| animals.zoo == self}
    end

    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(find_species)
        animals.select {|animal|animal.species == find_species}
    end

    def animal_nicknames(find_nicknames)
        animals.find {|animal|animal.nickname = find_nicknames}
    end

    def self.find_by_location(find_location)
        @@all.select{|zoos| zoos.location == find_location}
    end
end
