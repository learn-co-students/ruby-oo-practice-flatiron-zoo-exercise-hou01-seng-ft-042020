require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

houston_zoo = Zoo.new("Htown Zoo", "Houston")
flatiron_zoo = Zoo.new("Flatiron Zoo", "Houston")

new_york_zoo = Zoo.new("NY Zoo", "New York")

giraffe = Animal.new("Giraffe", 2200, "Steve", houston_zoo)
chimpanzee = Animal.new("Chimpanzee", 100, "Donna", houston_zoo)
dog = Animal.new("Dog", 40, "Mary", houston_zoo)
dog_1 = Animal.new("Dog", 20, "Paco", houston_zoo)

giraffe = Animal.new("Giraffe", 2200, "Steve", new_york_zoo)
chimpanzee = Animal.new("Chimpanzee", 100, "Donna", new_york_zoo)
dog = Animal.new("Dog", 40, "Mary", new_york_zoo)

#A zoo should be initialized with a name and a location, which should both be passed as strings.
#Zoo#location should return the location of the zoo instance.
#Zoo#name should return the name of the zoo instance.
#Zoo.all should return an array of all the zoo instances.
#Zoo#animals should return all the animals that a specific instance of a zoo has.
#Zoo#animal_species should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
#Zoo#find_by_species should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
#Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
#Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.

#An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
#Animal#nickname should return the nickname of the animal.
#Animal#weight should return the weight of the animal.
#Animal#species should return the species of the animal.
#Animal.all should return an array of all the animal instances.
#Animal#zoo should return the zoo instance that the instance belongs to.
#Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.

binding.pry
puts "done"
