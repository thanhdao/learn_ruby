#theater_case.rb
puts "Enters the customer's age: "
age = gets.to_i

case
	when age <= 12
		cost = 9
	when age >= 65
		cost = 12
	else
		cost = 18
	end

	puts "Ticket cost: " + cost.to_s