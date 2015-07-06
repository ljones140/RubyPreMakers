puts 'Me Grand Ma'
puts 'Hello youngun'
puts 'what do you want Youngun?'
bye_count = 0
while true  
  question = gets.chomp
  if question == 'BYE'
    bye_count += 1
      if bye_count == 3
        puts 'goodbye then'
        break
      end
    puts 'WHAT?!!'
  elsif question != question.upcase
    puts 'HUH? SPEAK UP, SONNY!'
    bye_count = 0  	
  elsif question == question.upcase
    date = 1930 + rand(20)
    puts 'NO NOT SINCE ' + date.to_s + ' !'
    bye_count = 0
  end
end

