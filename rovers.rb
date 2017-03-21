# rovers.rb
$plateau = {:length => 0, :width => 0 }
class Rovers
  
  def initialize(rover)
    rover_paras = rover.split(' ')
    @x = rover_paras[0].to_i
    @y = rover_paras[1].to_i
    @direction = rover_paras[2] 
  end

  def move(instruction, move_step)
    directions = {'N'=>0, 'E'=>90, 'S'=>180, 'W'=>270}
    angle = directions[@direction]

    for i in 0..(instruction.length - 1) do
      raise RuntimerError.new("Wrong instruction: #{instruction[i]}") if !(['L','R','M'].include?(instruction[i]))
      angle += (instruction[i] == 'L' ? 270 : (instruction[i] == 'R' ? 90 : 0)) 
      angle %= 360

      if instruction[i] == 'M'
        x_move = @x + (move_step * Math.sin(angle/180 * Math::PI)).to_i;
        y_move = @y + (move_step * Math.cos(angle/180 * Math::PI)).to_i; 
        raise RuntimerError.new("Out of Plateau x, y: (#{x}, #{y})") if x_move < 0 || x_move > $plateau[:length] || y_move < 0 || y_move > $plateau[:width]
        @x, @y = x_move, y_move
      end
    end

    @direction = directions.key(angle)
  end

  def status
    return "#{@x} #{@y} #{@direction}"
  end
end

instructions = IO.readlines("instructions.txt")
plateau_size = instructions[0].chomp.split(' ')
p plateau_size
$plateau[:length] = plateau_size[0].to_i
$plateau[:width] = plateau_size[1].to_i

i = 1
rovers = Array.new
while i < (instructions.length - 1)
  j = i/2
  rovers[j] = Rovers.new(instructions[i].chomp)
  rovers[j].move(instructions[i + 1].chomp, 1)
  p rovers[j].status
  i += 2
end


