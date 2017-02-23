#compare.rb
puts "Enter an integer between 5 and 10: "
i = gets.to_i
if (5 <= i && i <= 10)
	puts "Input was correct"
elsif i < 5
	puts "Input was lower than range. Please enter a higher integer: "
else i > 10
	puts "Input was higher than range. Please enter a lower integer: " 	
end

i = gets.to_i
if (i % 2 == 0)
	puts "Even"
else
	puts "Odd"
end