def kaprekar?(k)
  square = k * k
  digits = square.to_s.split(//)
  left = []
  left << digits.shift
  while digits.count > 0
    if (left.join.to_i + digits.join.to_i) == k
     return true
    else
      left << digits.shift
    end
  end
  return false
  #p digits
  #p left
  #p right
end

puts kaprekar? 9
puts kaprekar? 703
puts kaprekar? 28282
