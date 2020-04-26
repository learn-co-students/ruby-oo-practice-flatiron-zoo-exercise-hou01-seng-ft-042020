class Animal
  attr_reader :species, :nickname
  attr_accessor :weight, :zoo
  @@all = []
  def initialize(species, weight, nickname, zoo=nil)
    @zoo = zoo
    @nickname = nickname
    @weight = weight
    @species = species
    @@all << self
  end 

  def self.all 
    @@all 
  end 

  def self.find_by_species(species)
    Animal.all.select do |animal|
      animal.species == species    
    end 
  end 
end
