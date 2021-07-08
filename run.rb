require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
dog = Animal.new("dog",8,"Roxy")
monkey = Animal.new("monkey",10,"Bob")
dog2 = Animal.new("dog",9,"Maxie")
lion = Animal.new("lion",84,"Simba")
tiger = Animal.new("tiger",55,"Tony")
lion2 = Animal.new("lion",67,"Mufasa")
lion3 = Animal.new("lion",46,"Nala")



z1 = Zoo.new("Zoo1","Houston")
z2 = Zoo.new("Zoo2", "LA")

# dog.zoo = z1
lion.zoo = z1
lion2.zoo = z1
lion3.zoo = z1
tiger.zoo = z1
# dog2.zoo = z2
binding.pry
puts "done"
