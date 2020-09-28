class TriangleChecker
  attr_reader(:side1, :side2, :side3)

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_equilateral?()
    @side1 == @side2 && @side2 == side3 ? true : false
  end

  def is_not_a_triangle?()
    if ((@side1 + @side2) <= @side3) || ((@side1 + @side3) <= @side2) || ((@side3 + @side2) <= @side1)
      return true
    end
    return false
  end

  def is_isosceles?()
    if ((@side1 == @side2) || (@side1 == @side3) || (@side3 == @side2))
      return true
    end
    return false
  end


end

# check equilateral, not a triangle, isosceles, scalene 