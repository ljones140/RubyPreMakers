def sort words
  recursive_sort words, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.empty?
     sorted_array.each do |word|
       puts word
    end
  else
    remain_array = []
    unsorted_array.each do |word|
      count = 0
      unsorted_array.each do |compare|
        if word.downcase > compare.downcase
          count += 1
        end 
      end
      if count == 0
        sorted_array.push(word) 
      end
      if count > 0
        remain_array.push(word)
      end
    end
     recursive_sort remain_array, sorted_array
  end 
end  


words = []
while true
  puts 'Enter your words please!!!!!'
  entry = gets.chomp
  if entry.empty?
     sort(words)
    break
  else 
    words.push entry
  end 
end
