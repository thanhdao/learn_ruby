#count_red.rb
sample =
       [[[ 65, 67, 23], [234,176,  0], [143,  0,  0]],
        [[255, 30, 51], [156, 41, 38], [  3,243,176]],
        [[255,255,255], [  0,  0,  0], [133, 28, 13]],
        [[ 26, 43,255], [ 48,  2,  2], [ 57, 89,202]]]
        count = 0
for i in 0..sample.length - 1
  for j in 0..sample[i].length - 1
    r = sample[i][j][0]
    g = sample[i][j][1]
    b = sample[i][j][2]

    if r > 100 && b <  r/4 && g < r/4
      p "Red pixel: #{sample[i][j]}"
      count += 1
    end
  end
end

p "Number of red pixels: #{count}"