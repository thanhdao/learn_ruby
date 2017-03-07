#bit_multiply.rb
def add_bit(a, b)
  while b != 0
    c = a & b
    a = a ^ b
    b = c << 1
  end
  return a
end

a = 7
b = 9


c = 0
while b != 0
  c = add_bit(c, a) if (b & 1) != 0
  a = a << 1
  b = b >> 1
end

p c


