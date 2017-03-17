# linear_search.rb
NUM_STUDENTS = 25
MAX_GRADE = 100
find_value = 11

def linear_search(arr, find_value)
  found = false
  i = 0
  while(i < NUM_STUDENTS)
    i +=1
    if find_value == arr[i]
      found = true
      return i
    end
  end
  return found 
end

arr = Array.new(NUM_STUDENTS - 1)
for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1)
end


p arr
p "Find value: #{find_value}"
if linear_search(arr, find_value)
  p "Find: #{linear_search(arr, find_value)}"
else 
  p "Not found"
end
