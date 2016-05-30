require './Game'
require './Player'
require './QuestionGenerator'
require 'colorize'

player_one = Player.new("Player 1")
player_two = Player.new("Player 2")

game = Game.new(player_one, player_two)
game.play