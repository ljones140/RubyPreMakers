def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      end
      if reply == 'no'
        return false
      end
    end
      puts 'please answer yes or no?'	
  end    
end

ask 'do you like monkeys?'
ask 'do you like dogs?'
chicken = ask 'do you like chicken?'
puts chicken
