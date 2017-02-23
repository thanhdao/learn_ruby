#two_points.rb
puts "Enter x of point A: "
x_a = gets.to_i
puts "Enter y of point A: "
y_a = gets.to_i
puts "Enter x of point B: "
x_b = gets.to_i
puts "Enter y of point B: " 
y_b = gets.to_i

if x_a == x_b
	puts "The line is vertical"
elsif y_a == y_b
	puts "The line is horizontal"
elsif (x_a < x_b && y_a < y_b) || (x_a > x_b && y_a > y_b)
	puts "The line has positive slope"
else
	puts "The line has negative slope"
end

