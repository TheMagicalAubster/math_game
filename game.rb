# turn presents questions(and related correct answers) from questions.rb
# turn accepts answers from user
# turn calls on player.rb to decrement lives count

require './player.rb'
require './questions.rb'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2") 
    @players = [@player1, @player2]
  end


  def main_loop
      while (@player1.lives >= 1 || @player2.lives >= 1 )  
        
        current_player = @players.first 

        question = Question.new 
        question.quiz(current_player.name)
        
        input = $stdin.gets.chomp.to_i
        answer = question.correct?(input)

        @players.first.wrong unless answer
        @players.first.lives_left
        
        puts "Player 1 lives: ", @player1.lives, "Player 2 lives: ", @player2.lives

        if (@players.first.lives == 0)
         end_game
        end
        
        next_player

      end
  end

  def next_player
    @players.rotate!
  end

  def end_game
    puts "Game Over...Goodbye"
    exit!
  end


 
  
# calls wrong to decrement lives 
# main loop of game
# accepts the user input/output 
# game manages player 1 and player 2 
end



# answer = $stdin.gets.chomp