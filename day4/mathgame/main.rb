require_relative './player.rb'
require_relative './question.rb'

# Initialize players

puts "Welcome to the game. What's the name of the first player?"
@p1 = Player.new(gets.chomp)

puts "What's the name of the second player?"
@p2 = Player.new(gets.chomp)

@current_player = @p1


# Game

while @current_player.score > 0 do

  answer = generate_question()
  current_ans = gets.chomp

  if current_ans.to_i == @ans
    puts "You got it!"
  else
    puts "Wrong Answer"
    @current_player.score -= 1
  end

  @p1.stats
  @p2.stats

  @current_player == @p1 ? @p2 : @p1
end


# Final score

loser = @current_player

if @current_player == @p1 
  puts "#{@p2.name} is the winner." 
else
  puts "#{@p1.name} is the winner." 
end

loser.stats
