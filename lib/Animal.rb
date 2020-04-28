class Animal

    attr_reader :nickname, :species
    attr_accessor :zoo, :weight
    @@all = []
    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        self.class.all << self 
    end 

    def self.all
        @@all
    end 

    def self.find_by_species(find_species)
        all.map {|animal| animal.species == find_species}
    end 

end
