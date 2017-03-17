#selection_sort.rb
NUM_STUDENTS = 25
MAX_GRADE = 100

def selection_sort(arr)
  for i in (0..(arr.size - 2))
    min_pos = i
    for j in ((i + 1)..(arr.size - 1))
        min_pos = j if ( arr[min_pos] != nil && arr[j] != nil && arr[min_pos] > arr[j])
    end
    arr[i], arr[min_pos] = arr[min_pos], arr[i]
  end
  arr
end  

arr = Array.new(NUM_STUDENTS - 1)
for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1)
end

p arr
p selection_sort(arr)

# def selection_sort(arr)
#   0.upto(arr.size - 2) do |i|
#     min_pos = i
#     (i + 1).upto(arr.size - 1) do |j|
#       min_pos = j if ( !arr[min_pos].nil? && !arr[j].nil? && arr[min_pos] > arr[j])
#     end
#     arr[i], arr[min_pos] = arr[min_pos], arr[i]
#   end
#   arr
# end



