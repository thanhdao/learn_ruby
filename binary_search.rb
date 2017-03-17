# binary_search.rb
NUM_STUDENTS = 25
MAX_GRADE = 100
find_value = 11

def binary_search(arr, find_value)
  low = 0
  high = arr.length - 1
  while(low <= high)
    middle = (low + high) / 2
    return middle if arr[middle] == find_value
    high = middle - 1 if arr[middle] > find_value
    low = middle + 1 if arr[middle] < find_value
  end
  return false 
end

arr = Array.new(NUM_STUDENTS - 1)
for i in (0..NUM_STUDENTS - 1)
  new_value = rand(MAX_GRADE + 1) while arr.include?(new_value)
  arr[i] = new_value
end
arr.sort!

p arr
p "Find value: #{find_value}"
if binary_search(arr, find_value)
  p "Find: #{binary_search(arr, find_value)}"
else 
  p "Not found"
end