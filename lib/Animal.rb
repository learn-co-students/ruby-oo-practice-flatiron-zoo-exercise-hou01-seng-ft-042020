class Animal
  attr_accessor :nickname, :weight, :species, :zoo

  @@all = []

  def initialize (nickname, weight, species, zoo)
    @nickname = nickname
    @weight = weight
    @species = species
    @@all << self
    @zoo = zoo
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    Animal.all.select {|animal| animal.species == species}
  end

end
