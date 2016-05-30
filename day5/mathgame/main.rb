require './game.rb'
require './player.rb'
require './question.rb'

puts "----- Welcome to Two Player Math -----"
puts "What is the name of the first player?"

player_one = Player.new(gets.chomp)

puts "What is the name of the second player?"
player_two =Player.new(gets.chomp)

# player_one = Player.new("Player 1")
# player_two = Player.new("Player 2")

game = Game.new(player_one, player_two)
game.play