# generates and presents the questions


class Question
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = @num1 + @num2
  end

  def correct?(input)
    
    # _________
    if input == @answer
      puts "Correct!"
      return true
    else 
      puts "Wrong answer..."
      puts "Correct answer is: ", @answer
      return false
    end

  end
  

  def quiz(player)
   
    puts "----- New Turn -----"
    puts "#{player} what is #{@num1}+#{@num2}?"
    puts " >>>    "


  end

end