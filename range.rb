
# .include?

puts (1...20).include?(20) # => false
puts (1..10).include?(10)  # => true

# .last

puts (1..10).last    # => 10
puts (1...10).last   # => 10. Returns the last object defined in the range
puts (1..10).last(3) # => [8, 9, 10]
puts (3..40).last(4)
puts (8...32).last(2)


# .max

puts (1..10).max # => 10
puts [2,3,7,4,5,9,6,9,11].max
puts (35..320).max

# .min

puts (1..10).min # => 1
puts (5..30).min
puts [4,5,3,5,7,1,7,8].min
