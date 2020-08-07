class Triangle
  # write code here

  attr_reader :x, y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    validate_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else
      :scalene
     end
   end

def validate_triangle
  triangle = [(x + y > z),(x + z > y),(y + z > x)]
  [x, y, z].each {|a| triangle << false if a <= 0}
raise TriangleError if triangle.include?(false)
end

  class TriangleError < StandardError
  end

end
