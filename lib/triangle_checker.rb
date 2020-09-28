class TriangleChecker
  attr_reader(:side1, :side2, :side3)

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_equilateral()
    @side1 == @side2 && @side2 == side3 ? true : false
  end


end

# check equilateral, not a triangle, isosceles, scalene 