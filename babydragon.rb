class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10 #he's full
    @stuff_in_intestine = 0 #no poo needed
    puts "#{@name} is born."
  end  

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk #take him for a dump
    puts "You walk #{@name} and they have a good dump."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling he room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "They giggle which singes your eyebrows."
    passage_of_time
  end
  
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "it breifley dozes off...."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes up when you stop."
    end 
  end

  private
  #methods defined here are internal to the object
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      #move from belly to intestine
      @stuff_in_belly     = @stuff_in_belly     - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else #our dragon is starving
      if @asleep 
        @asleep  = false
        puts "wakes up suddenly!."
      end
      puts "#{@name} is starving! In desperation he ate YOU!"
      exit #quits program
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident... hot dragon poo melts your floor!!! "
    end
    
    if hungry?
      if @asleep
        @asleep = false
        puts "Wakes up suddenly!"
      end
       puts "#{@name}'s stomach grumbles"
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "Wakes up suddenly!"
      end
       puts "#{@name}'s does the poo poo dance"
    end  
  end

end

pet = Dragon.new "Mathilde"
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
