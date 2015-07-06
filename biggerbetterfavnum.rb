puts 'What\'s your favourite number?'
favnum_s = gets.chomp
favnum_i = favnum_s.to_i
bfavnum_i = favnum_i + 1
puts 'your favourite number is: ' + favnum_s 
puts 'would you not prefer: ' + bfavnum_i.to_s
puts self
