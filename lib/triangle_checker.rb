class TriangleChecker
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def equilateral?
    @side1 == @side2 && @side2 == side3 ? true : false
  end

  def not_a_triangle?
    ((@side1 + @side2) <= @side3) || ((@side1 + @side3) <= @side2) || ((@side3 + @side2) <= @side1) ? true : false
  end

  def isosceles?
    ((@side1 == @side2) || (@side1 == @side3) || (@side3 == @side2)) ? true : false
  end

  def get_triangle
    equilateral? ? 'Equilateral' : not_a_triangle? ? 'Is not a triangle' : isosceles? ? 'Isosceles' : 'Scalene'
  end
end