require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


z1 = Zoo.new("Btown Zoo", "Buffalo")
z2 = Zoo.new("ZooTown", "Buffalo")
z3 = Zoo.new("Htown Zoo", "Houston")

a1 = Animal.new("giraffee", 225, "Gigi", z3)
a2 = Animal.new("turtle", 5, "Shelly", z2)
a3 = Animal.new("bunny", 2, "BunBun", z2)
a4 = Animal.new("bunny", 3, "Fred", z3)
a5 = Animal.new("elephant", 435, "Mimi", z3)
a6 = Animal.new("giraffee", 500, "Spot", z1)
a7 = Animal.new("elephant", 265, "Adriana", z3)





all_animals = Animal.all
all_elephants = Animal.find_by_species("elephant")



binding.pry
puts "done"
