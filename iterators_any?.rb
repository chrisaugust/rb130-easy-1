# PROBLEM
# Implement an #any? method which works similarly to Enumerable#any?
# 
# It should take an Array as an argument, and a block. 
#
# It should return true if the block returns true for any of the element values. 
# Otherwise, it should return false.
#
# Your method should stop processing elements of the Array as soon as the block returns true.
#
# If the Array is empty, any? should return false, regardless of how the block is defined.
#
# Don't use any standard ruby method that is named all?, any?, none?, or one?.
#
# EXAMPLES
# any?([1, 3, 5, 6]) { |value| value.even? } == true
# any?([1, 3, 5, 7]) { |value| value.even? } == false
# any?([2, 4, 6, 8]) { |value| value.odd? } == false
# any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# any?([1, 3, 5, 7]) { |value| true } == true
# any?([1, 3, 5, 7]) { |value| false } == false
# any?([]) { |value| true } == false
# 
# DATA STRUCTURE
# Array
#
# ALGORITHM
# - return false if Array argument is empty
# - iterate over elements in the Array
# - yield each element to the block
# - return true for any element for which the block evaluates to true
# - return false
#
# CODE
require 'set'

def any?(array)
  return false if array.size == 0
  array.each { |elem| return true if yield(elem) }
  false
end

# TESTS
p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

# TESTS for other types of collections
p any?({'a': 1, 'b': 2}) { |k,v| v.even? } == true
p any?({}) { true } == false
set = Set.new
set << 1
set << 2
set << 3
p any?(set) { |elem| elem.even? } == true
p any?(Set.new) { true } == false
