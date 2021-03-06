def average(numbers)
  sum = 0
  numbers.each do |num|
    sum += num
  end
  sum / numbers.size
end

## TEST HELPER METHOD
def test_average(array = [])
  if array.count == 0
    p nil
  elsif array.include? nil
      array.delete(nil)
      print "avg of #{array.inspect}:"
      result = average(array)
      p result
  else
    array.map! { |i| i.to_f }
    print "avg of #{array.inspect}:"
    result = average(array)
    p result
  end
end

## TEST CODE
test_average([4,5,6]) # => 5
test_average([15,5,10]) # => 10

# Should treat string like number
test_average([15,'5',10]) # => 10

# Should show decimal value
test_average([10, 5]) # => 7.5 instead of just 7

# Watch out! Even tests can have bugs!
test_average([9, 5, 7])

# Empty set should return nil, not throw an error
test_average([]) # => nil

# Non-existent set should return nil
test_average() # => nil

# BONUS: Should ignore nils in the set
test_average([9,6,nil,3]) # => 6
