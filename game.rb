require_relative "Player"
require_relative "questions"

puts "What is your name player one?"
name1 = gets.chomp
puts "What is your name player two?"
name2 = gets.chomp

Player1 = Player.new(name1)
Player2 = Player.new(name2)
round = 1

while true
    if round.even? 
      current_player = Player2
      other_player = Player1
    else
      current_player = Player1
      other_player = Player2
    end 
    round +=1
    questions = Question.new

    p "#{current_player.name} : #{questions.question}"
    answer = gets.chomp.to_i 

    if current_player.lives == 1 
        puts "#{other_player.name} wins with #{other_player.lives}/3"
        puts "-------GAME OVER-----------"
        break
    elsif answer == (questions.number1 + questions.number2 )
        puts "Yes that is correct " 
        puts "#{current_player.name}: #{current_player.lives}/3 , #{other_player.name}: #{other_player.lives}/3"
    else
        puts "Sorry that is incorrect"  
        current_player.lives -= 1
        puts "#{current_player.name}: #{current_player.lives}/3 , #{other_player.name}: #{other_player.lives}/3"
    end

    puts "----------NEW TURN----------"
end    
