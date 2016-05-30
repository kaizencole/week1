class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = @player_one
  end

  def switch_players
    @current_player = @current_player == @player_one ? @player_two : @player_one
  end

  def play
    while true
      if @player_one.lives > 0 && @player_two.lives > 0
        puts
        puts @current_player.name + ": " +  QuestionGenerator.generate_question
        QuestionGenerator.verify_answer(@current_player)
        puts "---- Score Board ----"
        log_player_scores
        switch_players
      else
        puts
        puts "----- Game over -----"
        log_winner
        break
      end
    end
  end

  def log_winner
    if @player_one.lives == 0
      puts "#{@player_two.name} wins!"
      log_player_scores
    elsif @player_two.lives == 0
      puts "#{@player_one.name} wins!"
      log_player_scores
    end
  end

  def log_player_scores
    puts "#{@player_one.name}: #{@player_one.lives}"
    puts "#{@player_two.name}: #{@player_two.lives}"
  end
end
