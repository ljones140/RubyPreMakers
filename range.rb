letters = 'a'..'c'

puts (['a','b','c'] == letters.to_a)

('A'..'Z').each do |letter|
  print letter
end


def sum_of_cubes(a, b)
  total = 0
  (a..b).each do |i|
    cube = i * i * i
    total = total + cube
  end
  total
end

puts sum_of_cubes(3, 5)
