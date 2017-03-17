# radix_sort_name.rb
NUM_STUDENTS = 6

def radix_sort(arr)
  max_length = 0
  0.upto(NUM_STUDENTS - 1) do |i|
    max_length = arr[i].length if (arr[i].length > max_length)
  end
  p max_length

  0.upto(NUM_STUDENTS - 1) do |i|
    arr[i] = arr[i].ljust(max_length, ' ')
  end
  p arr

  0.upto(max_length - 1) do |i|
    buckets = Hash.new()
    (('A'..'Z').to_a + ('a'..'z').to_a).push(' ').each do |letter|
      buckets[letter] = Array.new()
    end

    0.upto(NUM_STUDENTS - 1) do |k|
      name = arr[k]
      letter = name[max_length - 1 - i]
      p buckets[letter]
      buckets[letter] << name
    end
    arr = buckets.values.flatten
  end
  arr
end 


arr = Array.new(NUM_STUDENTS - 1)
arr = ["Max", "John", "Lee", "Dao", "Henry", "Kingdom"]
p arr
p radix_sort(arr)
