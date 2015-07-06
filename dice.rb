class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def cheat number
    if number > 6 || number < 1
      @number_showing 
    else
      @number_showing = number
    end
  end

  def showing
    @number_showing
  end


end

#die = Die.new
#die.roll
#puts die.showing
#puts die.showing
#die.roll
#puts die.showing
#puts die.showing

die = Die.new
die.cheat(5)
puts "#{die.showing}"
die2 = Die.new
puts "#{die2.showing}"
die2.cheat(4)
puts "#{die2.showing}"

