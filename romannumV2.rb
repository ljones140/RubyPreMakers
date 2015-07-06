def romannum number
  result = ''
  numerals = [[1000, 'X'],
	      [500,  'D'],
              [100,  'C'],
              [50,   'L'],
              [10,   'X'],
              [5,    'V'],
              [1,    'I']]
  while number > 0
    if number % 1000 == 0
      result = 'M'
      number = number - 1000
    end
  end 
  puts result
  numerals.each do |num|
    numb   = num[0]
    letter = num[1] 
  end 
end

puts 'Enter number'
entry = gets.chomp.to_i
romannum entry

