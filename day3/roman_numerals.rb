@roman = [1000, 500, 100, 50, 10, 5, 1]
@numeral = ['M', 'D', 'C', 'L', 'X', 'V', 'I']

puts "Give a number to convert to roman numeral."
number = gets.chomp.to_i
remainder = 1

while remainder > 0
  (0..6).each do |i|
    current_roman = @roman[i]
    if number >= current_roman
      remainder = number % @roman[i] 
      multiplier = number / @roman[i]
      print "#{@numeral[i] * multiplier}" 
      number = remainder
      break
    end
  end
end    