# radix_sort.rb
NUM_STUDENTS = 100
MAX_GRADE = 100

def radix_sort(arr)
  max_length = 0
  0.upto(NUM_STUDENTS - 1) do |i|
    max_length = arr[i].length if (arr[i].length > max_length)
  end

  0.upto(NUM_STUDENTS - 1) do |i|
    arr[i] = arr[i].rjust(max_length, "0")
  end

  0.upto(max_length - 1) do |i|
    buckets = Hash.new()
    0.upto(9) do |j|
      buckets[j.to_s] = Array.new()
    end

    0.upto(NUM_STUDENTS - 1) do |j|
      num = arr[j]
      digit = num[max_length - 1 - i]
      buckets[digit].push(num)
    end
    arr = buckets.values.flatten
  end
  arr
end 


arr = Array.new(NUM_STUDENTS - 1)

for i in (0..NUM_STUDENTS - 1)
  arr[i] = rand(MAX_GRADE + 1).to_s
end
p arr
p radix_sort(arr)
