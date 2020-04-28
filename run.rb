require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("ZooZ1", "Houston")
zoo2 = Zoo.new("ZooZ2", "Houston")
zoo3 = Zoo.new("ZooZ3", "Houston")

animal1 = Animal.new("cat", 5, "kitt", zoo1)
animal2 = Animal.new("dog", 15, "puppy", zoo1)
animal3 = Animal.new("monkey", 10, "mong", zoo1)
animal4 = Animal.new("lion", 50, "king", zoo1)
animal5 = Animal.new("cat", 5, "kitt2", zoo2)
animal6 = Animal.new("dog", 15, "puppy2", zoo1)
animal7 = Animal.new("monkey", 10, "mong2", zoo1)
animal8 = Animal.new("lion", 50, "king2", zoo2)


binding.pry
puts "done"
