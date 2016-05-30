# Find the maximum
puts "input array" 
arr = gets.split(",").map(&:to_i)

def maximum(arr)
  max_num = arr[0]
  len = arr.size 

  if len == 1
    return arr[0]
    elsif len == 0
      puts "max of empty set is: nil" 
    else
      arr.each do |num|
        if num >= max_num
          max_num = num
        end
      end
    return max_num
  end
end

#def maximum(arr)
 # len = arr.size - 1
  #maximum = arr[0]

#  for i in 1..len
 #   if maximum < arr[i]
  #     maximum = arr[i]
   # end
  # end
 # maximum
# end

result = maximum(arr)
#puts "max of #{arr.join(', ')} is: #{result}"

puts "max of #{arr.join(', ')} is: #{result}"

# expect it to return 42 below
#result = maximum([2, 42, 22, 02])
#puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
#result = maximum([])
#puts "max on empty set is: #{result.inspect}"

#result = maximum([-23, 0, -3])
#puts "max of -23, 0, -3 is: #{result}"

#result = maximum([6])
#puts "max of just 6 is: #{result}"
