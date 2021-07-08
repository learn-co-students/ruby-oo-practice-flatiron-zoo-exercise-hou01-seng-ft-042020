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
    #works!
    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    #works don't change!
    def animal_species
        animals.map {|zoo| zoo.species}.uniq
    end

    def find_by_species(species)
        Animal.all.select {|animal| animal.species == species}
    end
    #works don't change!
    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select {|zoo| zoo.location == location}
    end
end
