#pulse_function.rb

def pulse(n)
	raise RuntimeError.new("n: #{n} must be integer") if (!n.is_a?(Integer))
	return 1 if n == 0
	return 0
end
pulse("he")
puts "Enter n: "
n = gets.to_i;
puts "Pulse: " + pulse(n).to_s