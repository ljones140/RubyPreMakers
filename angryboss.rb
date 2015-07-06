puts 'I am the Boss!!!!'
puts 'What do want to ask me?'
question = gets.chomp
if question.empty?
	puts 'SAY SOMETHiNG!!!'
else
	puts 'WHADDYA MEAN "' + question.upcase + '" ?!? YOU\'RE FIRED!!'
end
