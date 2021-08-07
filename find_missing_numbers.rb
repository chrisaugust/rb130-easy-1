# Write a method that takes a sorted array of integers as an argument, 
# and returns an array that includes all of the missing integers (in order) 
# between the first and last elements of the argument.
#
# Examples:
# missing([1, 3, 5]) # => [2, 4]
# missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# missing([1, 2, 3, 4]) == []
# missing([1, 5]) == [2, 3, 4]
# missing([6]) == []

def missing(array)
  (array.min..array.max).reject { |n| array.include?(n) }
end

# Tests
p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
