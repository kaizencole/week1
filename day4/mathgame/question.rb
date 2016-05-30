require_relative "./main.rb"


def generate_question()
  num1 = rand(1...20) 
  num2 = rand(1...20)
  puts "what's #{num1} + #{num2} ?"
  @ans = num1 + num2
end