def roman_to_i roman
  numbers = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000
  }

  roman = roman.downcase.reverse 
  total = 0
  index = 0
  
  while roman[index] != nil
    if (numbers.has_key?(roman[index]) == false)
      return "You're giving us funny numbers"
    else
      if (numbers[roman[index]] <= (numbers[roman[index + 1]] || 0))
        total = total + numbers[roman[index]]
        index += 1
      else
        total = total + (numbers[roman[index]] - (numbers[roman[index + 1 ]] || 0 ) )
        index += 2
      end
    end
  end
  total
end




puts "Give me a roman numeral?"
entry = gets.chomp
puts roman_to_i(entry)


