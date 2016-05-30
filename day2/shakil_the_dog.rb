# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic

puts "Say something!"
input = (gets.chomp).downcase

def shakil_the_dog(input)
  #if you bark, he'll bark back three times
  if input.include?("woof")
      puts "WOOF WOOF WOOF"
  #if you meow at him, he'll woof back five times
    elsif input.include?('meow')
    puts "woof woof woof woof woof"
  #if you explicitly use his name and say stop, he will not respond
    elsif input.include?('shakil' && 'stop')
    puts nil
  #if you say "treat," he will not respond
    elsif input.include?('treat')
    puts nil
  #if you say "leave the room," he will exit
    elsif input.include?('go away')
      exit
      #if you say anything to him, he will bark "woof" once
    else
      puts "woof"
  end
end

# Run our method
shakil_the_dog(input)