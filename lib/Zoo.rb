class Zoo
    attr_reader :name, :location
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
        Animals.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(find_species)
        animals.all.select {|animal|animal.species == find_species}
    end

    def animal_nicknames(find_nicknames)
        animals.map {|animal|animal.nickname}
    end

    def self.find_by_location(find_location)
        self.all.select {|animal|animal.location == find_location}
        animal
    end


end
