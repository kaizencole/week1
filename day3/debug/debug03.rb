def sum(list)
  sum = 0
  list.each {|ele|
    sum += ele
}
  puts sum
end

list1 = [16,21,31,42,55]

# 1. The following should return 165 instead of an error
puts sum(list1)

# 2. How would you refactor it using an enumerable method other than each? Examples of enumerables: map, select, inject, reject, detect.
def sum2(list)
  list.inject{|sum,ele| sum + ele }
end

puts sum2(list1)