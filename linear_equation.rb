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


# Code cua a Linh
class Equation
  class << self
    # Solve the Linear Equation ax + b = 0
    def linear_equation(a, b)
      raise RuntimeError.new("a: #{a} and b: #{b} must both be numbers.") if (!a.is_a?(Numeric) || !b.is_a?(Numeric))
      return -(b.to_f)/a if a != 0
      return 'x can be any value.' if b == 0
      'There is no value for x.'
    end

  end
end