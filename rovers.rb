# rovers.rb
$directions = {'N'=>0, 'E'=>90, 'S'=>180, 'W'=>270}

class Rovers
  
  def initialize(x, y , direction)
    @x = x
    @y = y
    @direction = direction
    @direction_angle = $directions[direction] 
  end

  def move(instruction)
    for i in 0..(instruction.length - 1) do
      @direction_angle += 270 if instruction[i] == 'L'
      @direction_angle += 90 if instruction[i] == 'R'
      @direction_angle %= 360

      if instruction[i] == 'M'
        @x += 1 if @direction_angle == 90
        @x -= 1 if @direction_angle == 270
        @y += 1 if @direction_angle == 0
        @y -= 1 if @direction_angle == 180
      end

    end

    @direction = $directions.key(@direction_angle)
  end

  def status
    return "#{@x} #{@y} #{@direction}"
  end

end

rover1 = Rovers.new(1, 2, 'N')
rover1.move("LMLMLMLMM")
p rover1.status

rover2 = Rovers.new(3, 3, 'E')
rover2.move("MMRMMRMRRM")
p rover2.status


