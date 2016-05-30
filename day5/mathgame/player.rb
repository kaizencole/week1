class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def log_score
    puts "Remaining Lives: #{@lives}"
  end

end