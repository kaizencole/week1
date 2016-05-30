# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require_relative ('./candidates.rb')
require_relative ('./filters.rb')

require 'pry'
require 'colorize'

## Task 6

loop = true

while loop do

  puts "Give a command."
  input = gets.chomp
  
  if input.include?('find')
    id = input.match(/\d+$/)[0]
    puts find(id)
    elsif input.match('all')
      #puts ordered_by_qualifications(@candidates, QUALIFICATION1, QUALIFICATION2)
      puts all(@candidates)
    elsif input.match('qualified')
      puts "#{qualified_candidates(@candidates)}".green
    elsif
      input.match('quit')
      puts "Bye!"
      loop = false
    else
      puts "Command not understood"
  end
end