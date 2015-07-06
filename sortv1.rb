words = []
while true
  puts 'Enter your words please!!!!!'
  entry = gets.chomp
  if entry.empty?
    words = words.sort
    words.each do |word|
      puts word
    end
    break
  else 
    words.push entry
  end 
end
