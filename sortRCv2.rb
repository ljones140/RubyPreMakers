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
      unsorted_array.each do |compare|
        if word.downcase > compare.downcase
          sorted_array.push(word) 
        else 
        remain_array.push(word)
        end
       end
     end
   end
     recursive_sort remain_array, sorted_array
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
