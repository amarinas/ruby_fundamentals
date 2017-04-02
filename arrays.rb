a =["mats", "hello","doojo", " beer", "beans"]
b = [5,6,3,5,2,6,5,8,0]

# .at will print out beer
# .fetch should print out beans
puts a.at(3)
puts a.fetch(4)
puts "------"
# prints out 5,6,5
puts b.at(0)
puts b.fetch(1)
puts b.fetch(3)
puts "------"
# .delete
# delete all 6 in the array
b.delete(6)
puts b
puts "------"
# delete mats
a.delete("mats")
puts a
puts "------"
# .reverse
puts a.reverse
puts b.reverse
puts "------"
# .length
puts a.length
puts b.length
puts "------"
# .sort
puts a.sort
puts b.sort
puts "------"
# .slice
puts a.slice!(1)
puts "list: "
puts a
puts "------"
# .shuffle
puts a.shuffle()
puts "------"
# .join
puts a.join("; ")
puts "------"
#  print out a with ;
puts b.join(" ")
# print out b with space
puts "------"
puts b.join
#  print out b with no space or any characters in between
puts "------"
puts b.join(a[0])
# you may also join them using other values like one of the elements from the array names
puts "------"

# .insert
a.insert(2, "noon")
# will insert the string "hi" at the 2 index of the array names

a.insert(2, "sure")
puts a

puts "------"

a.insert(6, 1, 2, 3)
puts a
puts "------"

puts a.values_at(0)
puts a.values_at(1,4)
puts b.values_at(0..4)
puts "------"

# using values_at and join
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
puts a.values_at(1,2).join(" is ")
