def sort unsorted_array
  sorted_array = []
  word_count = unsorted_array.count
 # while unsorted_array.count != sorted_array.count
  while unsorted_array[0] != nil
    word = unsorted_array.shift
    count = 0
    unsorted_array.each do |compare|
      if word > compare
        count += 1
      end
    end
    if count == 0
      sorted_array.push(word) 
    else
      unsorted_array.push(word)
    end
  end
    sorted_array.each do |word|
       puts word
    end 
end  


words = []
while true
  puts 'Enter your words please!!!!!'
  entry = gets.chomp
  if entry.empty?
     sort(words)
  #  sorted_array.each do |word|
   #   puts word
  #  end
    break
  else 
    words.push entry
  end 
end
