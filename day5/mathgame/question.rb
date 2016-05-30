class QuestionGenerator

  def self.generate_question
    first_num = rand(1...20)
    second_num = rand(1...20)
    @answer = first_num + second_num
    "What does #{first_num} plus #{second_num} equal?"
  end

  def self.verify_answer(current_player)
    unless gets.chomp.to_i == @answer
      current_player.lives -= 1
    end
  end

end