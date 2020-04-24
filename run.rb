require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
mp_zoo = Zoo.new("Memphis Zoo", "Tennessee")
bk_zoo = Zoo.new("Brooklyn Zoo", "New York")
kx_zoo = Zoo.new("Knoxville Zoo", "Tennessee")
Zoo.all

toni = Animal.new("Tiger", 15, "Toni")
jerry = Animal.new("Cat", 2.3, "Jerry")
tom = Animal.new("Rat", 0.6, "Tom")
snoopy = Animal.new("Dog", 4, "Snoopy")
garfield = Animal.new("Cat", 5, "Garfield")
catdog = Animal.new("Cat&Dog", 5, "CatDog")
Animal.all

tom.zoo = mp_zoo
toni.zoo = bk_zoo
jerry.zoo = mp_zoo
snoopy.zoo = bk_zoo
garfield.zoo = mp_zoo
catdog.zoo = bk_zoo

mp_zoo.animals
bk_zoo.animals

mp_zoo.animal_species
bk_zoo.animal_species

mp_zoo.find_by_species("Cat")

mp_zoo.animal_nicknames
bk_zoo.animal_nicknames

Zoo.find_by_location("Tennessee")
Animal.find_by_species("Cat")

binding.pry
puts "done"
