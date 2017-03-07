#sum_bit.rb
x = 6
y = 7

while y != 0
  c = x & y
  x = x ^ y
  y = c << 1
end
p x
