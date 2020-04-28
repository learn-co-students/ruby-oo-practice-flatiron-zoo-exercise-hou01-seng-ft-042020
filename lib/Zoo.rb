class Zoo
    attr_accessor :location, :name

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self 
    end 

    def self.all
        @@all
    end 

    def animals 
        Animal.all {|animal| animal.zoo == self}
    end 

    def animal_species
        animals.map {|animal| animal.species}
    end 

    def find_by_species(species_name)
        animals.find {|animal| animal.species == species_name}
    end 

    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end 

    def self.find_by_location(find_location)
        all.select {|zoo| zoo.location == find_location}
    end 
end
