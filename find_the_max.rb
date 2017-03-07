#find_the_max.rb
arr = [73, 98, 86, 61, 96]
index = 0
max = arr[0]

while (index < arr.size)
  max = arr[index] if arr[index] < max
  index += 1
end

puts "Max ==> #{max}"
