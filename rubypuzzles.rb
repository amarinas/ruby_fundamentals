
# create an array
array = [3,5,1,2,7,9,8,13,25,32]
puts array.to_s
# sum of the array
puts array.reduce(:+)

#return numbers greater than 10
puts array.reject { |number| number < 10 }.to_s
puts array.find_all { |i| i > 10 }.to_s

#create a new array
name_array = ["John","KB","Oliver", "NMatt", "Christopher", "Shuffle"]
#shuffle names
name_array.shuffle.each { |name| puts name }

#return name lognger than 5 characters
puts name_array.find_all { |name| name.length > 5}

# create an array all letters
all_array = ("a".."z").to_a
puts all_array.to_s
# shuffle and get last letter
puts all_array.shuffle.to_s
puts all_array.shuffle.last
# shuffle and get first letter
puts all_array.shuffle.to_s
puts all_array.shuffle.first

# retrun a value if its an vowel
random = all_array.shuffle
puts "#{random.first} is a vowel" if ["a","e","i","o","u"].include? random.first

#random number 55-100
new_ran = []
10.times { new_ran << rand(55..100)}
puts new_ran.to_s

#random number and sort it to smallest to largest
puts new_ran.sort.to_s
# min value and max value
puts new_ran.max
puts new_ran.min
# create a random string
string_new = ""
5.times { string_new << rand(65..90).chr }
puts string_new
#generate string with 10 string and 5 characters lognge
sArray = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  sArray << str
end
puts sArray.to_s
