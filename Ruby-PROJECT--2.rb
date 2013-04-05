# Firstly, an Array is an ORDERED,interger-indexed collection of objects
# Objects that can go in an array: Strings,Numbers, Other arrays, Mixed types...
# An array is zero based index
# Here we will have 2 different arrays so that we can see the different in using sort with arrays

Data_names = ["Steve","Brandon","Sedy","Nathan"]
Data_num = ["6","2","1","4","3","5"]


# Here we use a block to sort an array of strings based on length,because strings here we don/t have a numerical value
# Here we use spaceship , you define it in your own class and include the Comparable module by using block.

Data_names = ["Steve","Brandon","Sedy","Nathan"]
Data_names.sort {|Data_names1,Data_names2| Data_names1.length <=> Data_names2.length }
puts Data_names

# It should look like this  =>["Sedy","Steve","Nathan","Brandon"] there you go , they are ascending

Data_num.sort    # Here we use numerical value in this array
puts Data_num
# The line return should appears like this  =>["1","2","3","4","5","6"] here they are ascending.

# right now we are going to Remove the first item and the last item from those arrays
# always remember that in an array is always based on 0 it means the first let's say a number has the position of ZERO for instance

Data_num = ["6","2","1","4","3","5"]
# So we are going to remove the position 0 which is the string "6" bby using the method .delete_at(position)

Data_num.delete_at(0)
puts Data_num
# so the result should look like this  =>["2","1","4","3","5"]

# Now lets take a look at the Data_names = ["Steve","Brandon","Sedy","Nathan"]
# Its the same as using the delete_at(position)

Data_names.delete_at(0)
puts Data_names
# the result should look like this ["Brandon","Sedy","Nathan"]

# Now we are going to Remove the last item from those arrays
# let us take the array from where we left off

Data_num = ["2","1","4","3","5"]
# So we are going to remove the position 5 which is the string "5" bby using the method .delete_at(position)

Data_num.delete_at(5)
puts Data_num
# so the result should look like this  =>["2","1","4","3"]

# Now lets take a look at the Data_names = ["Brandon","Sedy","Nathan"]
# Its the same as using the delete_at(position)

Data_names.delete_at(3)
puts Data_names
# the result should look like this ["Brandon","Sedy"]

# Now we are going to Reverse the order of those arrays and we are not going to take where we left off but take from the original Data_names and Data_num
# Here we use a block to sort an array of strings based on length,because strings here we don/t have a numerical value
# Here we use spaceship , you define it in your own class and include the Comparable module by using block.

Data_names = ["Steve","Brandon","Sedy","Nathan"]
Data_names.sort {|Data_names1,Data_names2| Data_names2.length <=> Data_names1.length }
puts Data_names

# It should look like this [,"Brandon","Nathan","Steve","Sedy"] there you go , they are reversed

Data_num = ["6","2","1","4","3","5"]
Data_num.sort.reverse    # Here we use numerical value in this array and use the method .sort.reverse , first it sorts the array and then reverse it
puts Data_num
# The line return should appears like this  =>["6","5","4","3","2","1"] here they are reversed.


# Now we are going to Iterate through the array and print the name to the screen for that we are going to use .each do |Array|

Data_names = ["steve","brandon","sedy","nathan"]
Data_names.each do |Data_names|
  puts Data_names.capitalize  # here we want it to capitalize those names by using .capitalize
end
# then the result should be
# "Steve"
# "Brandon"
# "Sedy"
# "Nathan"
# =>["Steve","Brandon","Sedy","Nathan"] notice that first the names were not capitalized but we requested for it and it did but if the array in Data_names were already capitalized then it will do the opposite , I mean the result will be not capitalized

# So now let see with the numerical value

Data_num = ["6","2","1","4","3","5"]
Data_num.each do |Data_num|
  puts Data_num.sort  # Here we want it to sort it in order as the begining we set
end
# then the result will be
#"1"
#"2"
#"3"
#"4"
#"5"
#"6"
# =>["1","2","3","4","5","6"]

# Now we are going to Create a hash with the KEY being a name and the VALUE being the type of car they drive("Steve" as the key and "Taurus" as the value)

Data_hash = {"Steve"=>"Taurus","Brandon"=>"Ford","Sedy"=>"Skyline","Nathan"=>"Dodge"}
puts Data_hash.keys # Here we will find out which are the keys by using .keys
# the result will be shown all the keys in the hash
# Steve
# Brandon
# Sedy
# Nathan
# => nil
puts Data_hash.values # Here we will find out which are the values by using .values
# the result will be shown all the keys in the hash
# Taurus
# Ford
# Skyline
# Dodge
# => nil


#Now let us Iterate through the hash printing the name and the type of car they drive to the screen

Data_hash = {"Steve"=>"Taurus", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
#=>{"Steve"=>"Taurus", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
Data_hash.each do |keys, values|
puts "His name #{keys}: he's driving a #{values.upcase} car"   # Remember that every value should be .upcase
end
# His name Steve: he's driving a TAURUS car
# His name Brandon: he's driving a FORD car
# His name Sedy: he's driving a SKYLINE car
# His name Nathan: he's driving a DODGE car
# => {"Steve"=>"TAURUS", "Brandon"=>"FORD", "Sedy"=>"SKYLINE", "Nathan"=>"DODGE"}

# Now for one of the names, change the car they drive, we need to remember that the hash is in an instance variable which should not be changed. We need a new hash with the changed values

# let set this new hash , the new car for Steve
new_car = {"Steve"=>"Porsche"}
Data_hash = {"Steve"=>"Taurus", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
# here we are going to use .merge methods, merge methods is only used for hashes
Data_hash.merge(new_car)
# the result will be => {"Steve"=>"Porsche", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
# But now what happens if we switch the hashes on merge method i mean new_car.merge(Data_hash)
# will the new car for Steve will still be the same? I don t think so check this out

New_car.merge(Data_hash)
# look at this result , i went back to the previous car which is not what we are looking for so now to fix that we need to use the if/else statements
Data_hash.merge(new_car) {|key,old,new| new}
# here is the result which is  => {"Steve"=>"Porsche", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
Data_hash.merge(new_car) {|key,old,new| old}
# Here the result will go back to the original => {"Steve"=>"Taurus", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
# Now we ve seen the different ways to show the new car and the old car but this method is not done yet so let s take a look on using the if statement

Data_hash.merge(new_car) do|key,old,new| # here what i want you to do when we have a conflict
  if old.length > new.length
    old
  else
    new
end

# now the result will be the one we wanted => {"Steve"=>"Porsche", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}

# but there is a shortcut or another way to write it in a good way instead of typing all

Data_hash.merge(new_car) {|k,o,n| o > n ? o : n }
#the same result we wanted => {"Steve"=>"Porsche", "Brandon"=>"Ford", "Sedy"=>"Skyline", "Nathan"=>"Dodge"}
# so it does the exact same thing , all in one line instead of being spread accross several lines


# Now we are going to see the primary differences between an Array and a Hash. and When/why would we use one over the other?

# Arrays are ordered, integer-indexed collections of any object. Array indexing starts at 0. A negative index is assumed to be relative to the end of the array,that is an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
# Arrays has been built into programming languages for decades, but built-in hashes are a relatively recent development. Now that they're around, it's hard to live without them: they're at least as useful as arrays.
# A Hash is a collection of key-value pairs of unordered items. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index. Hashes enumerate their values in the order that the corresponding keys were inserted.
# Hashes and arrays are the two basic "aggregate" data types supported by most modern programming lagnguages. The basic interface of a hash is similar to that of an array. The difference is that while an array stores items according to a numeric index, the index of a hash can be any object at all.
# Ruby's arrays and hashes are indexed collections. Both store collections of objects, accessible using a key. With arrays, the key is an integer, whereas hashes support any object as a key. Both arrays and hashes grow as needed to hold new elements. It's more efficient to access array elements, but hashes provide more flexibility. Any particular array or hash can hold objects of differing types; you can have an array containing an integer, a string, and a floating point number
# You can create and initialize a new array using an array literal---a set of elements between square brackets. Given an array object, you can access individual elements by supplying an index between square brackets.

















