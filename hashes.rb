#.delete

new_hash = {name: "fred", occupation: "trucker"}
puts new_hash
new_hash.delete :occupation
puts new_hash


# .empty? check to see if it is empty
emptyH = {}
puts emptyH.empty?

# .has_key?
puts new_hash.has_key? :name
puts new_hash.has_key? :occupation


#.hash_value
puts new_hash
puts new_hash.has_value? "fred"
puts new_hash.has_value? "trucker"
