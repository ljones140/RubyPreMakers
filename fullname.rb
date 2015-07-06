puts 'What is your first name?'
firstname = gets.chomp
puts 'do you have a middle name Y or N ?'
reply = gets.chomp
if reply.downcase == 'y'
	puts 'Enter your middle name?'
	middlename = gets.chomp
	middlename = middlename + ' '
else
	middlename = ''
end
puts 'Enter your surname?'
surname = gets.chomp

puts 'Your full name is ' + firstname.capitalize + ' ' + middlename.capitalize + surname.capitalize

fnamelength = firstname.length
if middlename.empty?
	mnamelength = 0
else
	mnamelength = middlename.length - 1  #remove middlename extra space 
end
snamelength = surname.length
namelength  = fnamelength + mnamelength + snamelength 

puts fnamelength.to_s
puts mnamelength.to_s
puts snamelength.to_s
puts 'The length of your name is ' + namelength.to_s + ' letters!'
