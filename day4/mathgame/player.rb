require_relative './main.rb'


class Player 

  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def stats
    puts "#{@name}'s score is #{@score}"
  end
end