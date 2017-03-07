#example_612.rb
arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
p arr
n = arr.length

loop do
  swapped = false
  (n-1).times do |i|
    if (arr[i] > arr[i + 1])
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swapped = true    
    end
        
  end
  break if not swapped

end

p arr