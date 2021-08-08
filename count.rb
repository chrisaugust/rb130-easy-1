# PROBLEM
# Write a method that takes an array as an argument, and a block that returns true or false 
# depending on the value of the array element passed to it. The method should return a count 
# of the number of times the block returns true.
#
# You may not use Array#count or Enumerable#count in your solution.
#
# EXAMPLES
# count([1,2,3,4,5]) { |value| value.odd? } == 3
# count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
# count([1,2,3,4,5]) { |value| true } == 5
# count([1,2,3,4,5]) { |value| false } == 0
# count([]) { |value| value.even? } == 0
# count(%w(Four score and seven)) { |value| value.size == 5 } == 2
#
# DATA STRUCTURE
# Array
#
# ALGORITHM
# - initialize count to 0
# - iterate over element in collection
#   - yield to block
#   - increment counter if block's return value is truthy
# - return count
#
# CODE

# version 1
# def count(collection)
#   count = 0
#   collection.each { |elem| count += 1 if yield(elem) }
#   count
# end

# version 2
def count(collection)
  count = 0
  for i in 0...collection.size do
    count += 1 if yield(collection[i])
  end
  count
end

# TESTS
p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
