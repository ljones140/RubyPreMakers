def shorten(string, length, glue="...")
  #your code here
  if string.length < length
    string
  else
    middle    = string.length / 2.to_i
    front     = string[0..middle -1]
    back      = string[middle..string.length]
    to_remove = string.length + glue.length - length
    #puts "middle is #{middle} front is #{front} back is #{back} to remove is #{to_remove}"
    
    #puts front + glue + back
      result = front[0..front.length - 1 - to_remove / 2].to_s  + glue.to_s + back[(0 + to_remove / 2) + (to_remove % 2) ..-1].to_s
     #result = front[0..front.length - 1 - to_remove / 2]  + glue + back[0..back.length - 1 - to_remove / 2]
     if result.length > length  
      result = string[0..string.length - 1 - (to_remove - glue.length)]
     else
      result 
    end 
  end
end

#puts shorten("1234512345111",u 10,'eee' )
puts shorten('hello world', 5, "-d-----")
puts shorten('hello world', 0, "-d-----")
#puts shorten("The quick brown fox jumps over the lazy dog", 27)
#puts shorten("The quick brown fox jumps over the lazy dog", 27, '----')
