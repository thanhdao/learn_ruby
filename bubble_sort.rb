# bubble_sort.rb
NUM_STUDENTS = 35
MAX_GRADE = 100

def bubble_sort(arr)
  0.upto(arr.size - 2) do |i|
    (i + 1).upto(arr.size - 1) do |j|
        arr[i], arr[j] = arr[j], arr[i] if ( arr[j] != nil && arr[j] != nil && arr[i] > arr[j])
    end   
  end
  arr
end  

arr = Array.new(NUM_STUDENTS - 1)
for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1)
end

p arr
p bubble_sort(arr)