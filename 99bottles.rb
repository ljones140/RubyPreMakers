bottles = 99
chorus =  'You Break one down turn it around'
while true
  verse      =  bottles.to_s + ' Bottles of Beer'
  puts verse + ' on the wall'
  puts verse
  puts chorus
  puts verse
  bottles    = bottles -1
  if bottles == -1
    break
  end
end  
