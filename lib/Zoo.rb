require_relative "Animal.rb"

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
        #return all the animals that a specific instance of a zoo has
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        #should return an array of all the species(as strings) of the animals in the zoo
        #need an unique array
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(animal)
        #takes in animal's species
        #returns an array of all the animals in thz3.nat zoo, which are that species
        animals.select {|a| a.species == animal}
    end

    def animal_nicknames
        #returns an array of all the nicknames of animals that zoo instance has
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(find_location)
        #retun an array of all the zoos within that location
        self.all.select {|zoo| zoo.location == find_location}
    end



    def easy_to_read_list_all

        easy_array = animals.map {|animal| "A(n) #{animal.species} named #{animal.nickname} who weighs #{animal.weight} pounds!"}

        puts "Here is a list of who/what you can see at the #{self.name}, located in #{self.location}:"
        puts easy_array
        
        # OUTPUT: z3.easy_to_read_list_all
        # Here is a list of who/what you can see at the Htown Zoo, located in Houston
        # A(n) giraffee named Gigi who weighs 225 pounds!
        # A(n) bunny named Fred who weighs 3 pounds!
        # A(n) elephant named Mimi who weighs 435 pounds!
        # A(n) elephant named Adriana who weighs 265 pounds!
        # => nil
    end

end
