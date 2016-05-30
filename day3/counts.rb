def count_letters(list)
  counts = Hash.new 0
  words = list.join('')
  letters = words.split('')
  letters.each { |letter| letter.downcase!}
  letters.each { |letter| counts[letter] += 1 }
  counts
end

#test

instructors = ['Faisal', 'Fabio', 'Adam', 'Monting']
puts count_letters(instructors)

# # Part 2: return indices instead of letters

# def count_index(list)
#   words = list.join('')
#   letters = words.split('')
#   letters.each { |letter| letter.downcase!}
  
#   # Create new array with each letter [letter_index]
#   # Add to this array every time letter repeats


#   letters.each_with_index do  |letter, index| 
#     counts[letter].push(index)
#     puts counts[letter]
#   end

#   counts
#   #letters.each_with_index { |letter, index| puts "counts: #{letter} at index #{index}" }
# end

# puts count_index(instructors)





# # def char_count(list)
# #   letters = Hash.new 0
# #   list.each do |word|
# #     word.split('').each { |letter| letters[letter] += 1 }
# #   end
# #   letters
# # end