class Triangle
  # write code here

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
  if (a <= 0) || (b <= 0) || (c <= 0)
        raise TriangleError
      elsif (a + b <= c) || (a + c <= b) || (b + c <= a)
        raise TriangleError
      else
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    elsif (a != b) && (b != c) && (a != c)
      :scalene
     end
   end

# def validate_triangle
#   triangle = [(a + b > c),(a + c > b),(b + c > a)]
#   [a, b, c].each {|x| triangle << false if x <= 0}
# raise TriangleError if triangle.include?(false)
# end

  class TriangleError < StandardError
  end

end
