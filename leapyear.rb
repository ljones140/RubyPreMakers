puts 'Give me starting year?'
start_year_s = gets.chomp
puts 'Give me ending year?'
end_year_s   = gets.chomp
start_year   = start_year_s.to_i
end_year     = end_year_s.to_i
calc_year    = start_year
puts 'Your leap years are:'
while calc_year <= end_year
  if (calc_year % 100 > 0 && calc_year % 4 == 0) || (calc_year % 100 == 0 && calc_year % 400 == 0)
    puts calc_year
  end
  calc_year += 1
end 
