
def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number } 
end

def subtract(*numbers)
  numbers.inject { |sum, number| sum - number } 
end

def calculate(*params)
  option = params.last.is_a?(Hash) ? params.pop : { add: true }
  params = add(*params) if option[:add]
  params = subtract(*params) if option[:subtract]
  params
end

puts calculate(1,2,3, add: true)
puts calculate(1,2,3)
