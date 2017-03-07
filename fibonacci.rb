#fibonacci.rb
def fibonacci(num)
  raise RuntimerError.new("number: #{num} must be Integer") if (!num.is_a?(Integer) || num <= 0)
  return 1 if num <= 2
  # return fibonacci(num-1) + fibonacci(num-2)
  a = Array.new
  a[0] = 1
  a[1] = 1 
  for i in (2..num-1)
    a[i] = a[i-1] + a[i-2]
  end
  return a[num -1] 
end


# Mr Linh's code

# def fibonacci(n)
#  raise RuntimerError.new("number: #{n} must be Integer") if (!n.is_a?(Integer) || n <= 0) 
#  return 1 if [0, 1].include? n
#  number_1 = 1
#  number_2 = 1
#  new_number = 2
#  (3..n).each do
#    number_1 = number_2
#    number_2 = new_number
#    new_number = number_1 + number_2
#  end
#  new_number
# end


# def fibonacci(n)
#  raise RuntimerError.new("number: #{n} must be Integer") if (!n.is_a?(Integer) || n <= 0) 
#  return 1 if n <= 2
#  number_1 = 1
#  number_2 = 2
#  (3..n).each do
#    number_2 += number_1
#    number_1 = number_2 - number_1
#  end
#  number_2
# end

puts " Fibonacci order: "
n = gets.to_i
puts "Fibonnaci: #{fibonacci(n)}"
