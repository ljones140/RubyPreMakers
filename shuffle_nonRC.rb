def shuffle words
  shuffle_array = []
  while words[0] != nil
    word = words.delete_at(rand(words.length))
    shuffle_array.push word  
  end
  shuffle_array.each do |word|
    puts word
  end 
end  


words = []
while true
  puts 'Enter your words please!!!!!'
  entry = gets.chomp
  if entry.empty?
     shuffle(words)
    break
  else 
    words.push entry 
  end 
end
