# insertion_sort.rb
NUM_STUDENTS = 25
MAX_GRADE = 100

def insertion_sort(arr)
  1.upto(NUM_STUDENTS - 1) do |i|
    j = i - 1
    a = arr[i]
    while (j >= 0 && a != nil && arr[j] != nil && a < arr[j])
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = a
  end
  arr
end  

arr = Array.new(NUM_STUDENTS - 1)
for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1)
end

p arr
p insertion_sort(arr)
