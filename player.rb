
class Player
  attr_accessor :name, :lives 
  
  def initialize(name) 
    @name = name
    @lives = 3
  end

  def wrong 
    @lives -= 1
    puts "WRONG! You lose 1 life"
  end

  def lives_left
    puts "#{name} has #{lives} lives remaining"
  end

end



