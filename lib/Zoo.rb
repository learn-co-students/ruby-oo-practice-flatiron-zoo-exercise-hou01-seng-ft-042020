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
    Animal.all.select {|inst| inst.zoo == self}
  end

  def animal_species
    animals.map {|animal| animal.species}.uniq
  end

  def animal_nicknames
    animals.map {|animal| animal.nickname}
  end

  def self.find_by_location(location)
    Zoo.all.select {|inst| inst.location == location}
  end

end
