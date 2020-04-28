require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("Zoo 1", "NYC")
z2 = Zoo.new("Zoo 2", "DC")
z3 = Zoo.new("Zoo 3", "HTX")

a1 = Animal.new("Beyonce", "Tiger", 100, z3)
a2 = Animal.new("Jay Z", "Lion", 550, z3)
a3 = Animal.new("Claire", "Lemur", 100, z1)
a4 = Animal.new("Mitchun", "Platypus", 100, z1)
a5 =  Animal.new("Vradi", "Cactapus", 100, z3)


binding.pry
puts "done"
