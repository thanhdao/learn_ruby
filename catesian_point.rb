# catesian_point.rb
class CatesianPoint
  def initialize(x, y)
    @x = x
    @y = y
  end

  def x
    @x
  end

  def y
    @y
  end

end

class Slope
  def initialize(point_a, point_b)
    @point_a = point_a
    @point_b = point_b
  end

  def slope
    return 90 if (@point_b.x == @point_a.x)
    return (180 / (Math::PI) * Math.atan(1.0 * (@point_b.y - @point_a.y)/(@point_b.x - @point_a.x)))
  end

end

a1 = CatesianPoint.new(0,0)
b1 = CatesianPoint.new(3,4)
slope1 = Slope.new(a1, b1)
puts "Slop1: #{slope1.slope}"

a2 = CatesianPoint.new(2,3)
b2 = CatesianPoint.new(6,5)
slope2 = Slope.new(a2, b2)
puts "Slop2: #{slope2.slope}"

a3 = CatesianPoint.new(2,2)
b3 = CatesianPoint.new(2,7)
slope3 = Slope.new(a3, b3)
puts "Slop3: #{slope3.slope}"

