#split_array.rb
a = [6, 45, 23, 65, 17, 48, 97, 32, 18, 9, 88]
p a
a1_length = a.length / 2
a1 = Array.new
a2 = Array.new
for i in 0..a1_length - 1
  for j in a1_length..a.length-1
    if a[i] > a[j]
      a[i], a[j] = a[j], a[i]
    end
  end
end
a1 = a[0, a1_length]
a2 = a[a1_length, a.length - a1_length]
p a
p a1
p a2