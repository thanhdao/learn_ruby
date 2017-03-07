# function.rb
def f(x)
  return ( x**4 + 17 * x**3 - 416 * x**2 - 612 * x + 2500)*1.0/500
end
arr = Array.new
(-50..50).each do |i|
  arr << f(i)
  p i if f(i) == 0
end

 p arr