#fibonacci.rb
def fibonacci(num)
  raise RuntimerError.new("number: #{num} must be Integer") if (!num.is_a?(Integer))
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

puts " Fibonacci order: "
n = gets.to_i
puts "Fibonnaci: " + fibonacci(n).to_s



