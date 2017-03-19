# rovers.rb
# $directions = "NESW"
$directions = {'N'=>0, 'E'=>90, 'S'=>180, 'W'=>270}
$plateau = {:length => 0, :width => 0 }

class Rovers
  
  def initialize(rover)
    rover_paras = rover.split(' ')
    @x = rover_paras[0].to_i
    @y = rover_paras[1].to_i
    @direction = rover_paras[2] 
  end

  def move(instruction)
    angle = $directions[@direction]
    for i in 0..(instruction.length - 1) do
      raise RuntimerError.new("Wrong instruction: #{instruction[i]}") if !(['L','R','M'].include?(instruction[i]))
      angle += 270 if instruction[i] == 'L'
      angle += 90 if instruction[i] == 'R'
      # angle += (instruction[i] == 'L' ? 270 : (instruction[i] == 'R' ? 90 : 0)) 
      angle %= 360

      if instruction[i] == 'M'
        case angle
          when 90
            raise RuntimerError.new("Out of Plateau x: #{@x}") if @x + 1 > $plateau[:length]
            @x += 1
          when 270
            raise RuntimerError.new("Out of Plateau x: #{@x}") if @x -1 < 0
            @x -= 1
          when 0
            raise RuntimerError.new("Out of Plateau y: #{@y}") if @y + 1 > $plateau[:width] 
            @y += 1
          when 180
            raise RuntimerError.new("Out of Plateau y: #{@y}") if @y - 1 < 0
            @y -= 1
          else
        end
        # @x += (angle == 90 ? 1 : (angle == 270 ? -1 : 0))
        # @y += (angle == 0 ? 1 : (@sangle == 180 ? -1 : 0))
      end

    end

    @direction = $directions.key(angle)
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
  rovers[j].move(instructions[i + 1].chomp)
  p rovers[j].status
  i += 2
end
p rovers


