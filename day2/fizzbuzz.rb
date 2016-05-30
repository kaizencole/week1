#Get starting and ending numbers

puts "what is the starting number?"
x = gets.to_i

puts "what is the ending number?"
y = gets.to_i

if y<x
x=y
end

#Redefine fizzbuzz to include new starting and ending numbers

x.upto(y) do |i|
  if i % 5 == 0 && i % 3 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end
