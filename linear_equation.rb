#linear_equation.rb

def linear(a, b)
	if(a == 0 && b == 0)	
		puts "X can be any value"
		return
	elsif (a == 0 && b != 0)
		puts "Error"
		return
	else 
		return -b/a
	end
end

puts "Enter a: "
a = gets.to_f
puts "Enter b: "
b = gets.to_f
puts "x = " + linear(a, b).to_s