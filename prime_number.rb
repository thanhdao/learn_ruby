#prime_number.rb
def check_prime_number(num)
  raise RuntimerError.new("number: #{num} must be Integer") if (!num.is_a?(Integer))
  return true if (num <=2)

  n = Math.sqrt(num).round 
  for i in (2..n)
    return false if (num % i == 0)
  end
  return true
end

puts " Find prime number until: "

num = gets.to_i
for i in (1..num)  
   puts "Prime number: #{i}" if check_prime_number(i)
end




