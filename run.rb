require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("LA Zoo", "LA")
z2 = Zoo.new("NY Zoo", "NY")
z3 = Zoo.new("Chi Zoo", "Chi")
z4 = Zoo.new("AZ Zoo", "AZ")
z5 = Zoo.new("MD Zoo", "MD")
z6 = Zoo.new("SF Zoo", "SF")
z7 = Zoo.new("SF Zoo2", "SF")


a1 = Animal.new("nickname1", 12, "dog", z1)
a2 = Animal.new("nickname2", 12, "dog", z1)
a3 = Animal.new("nickname3", 12, "cat", z2)
a4 = Animal.new("nickname4", 12, "bird", z5)
a5 = Animal.new("nickname5", 12, "horse", z4)
a6 = Animal.new("nickname6", 12, "horse", z6)
a6 = Animal.new("nickname6", 12, "horse", z7)

binding.pry
puts "done"
