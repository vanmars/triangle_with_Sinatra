require('triangle_checker')
require('rspec')

describe('#TriangleChecker') do
  describe('#initialize') do
    it('checks whether the sides are assigned when a new TriangleChecker is initialized') do
      tri_check = TriangleChecker.new(3, 4, 5)
      expect(tri_check.side1).to(eq(3))
    end
  end

  describe('#equilateral?') do
    it('checks whether a triangle is equilateral') do
      tri_check = TriangleChecker.new(3, 4, 5)
      expect(tri_check.equilateral?()).to(eq(false))
    end
  end

  describe('#not_a_triangle?') do
    it('checks if a triangle is not a triangle') do
      tri_check = TriangleChecker.new(2, 2, 100)
      expect(tri_check.not_a_triangle?()).to(eq(true))
    end
  end

  describe('#isosceles?') do
    it('checks if a triangle is isosceles') do
      tri_check = TriangleChecker.new(3, 3, 4)
      expect(tri_check.isosceles?()).to(eq(true))
    end
  end

  describe('#get_triangle') do
    it('returns what type of triangle is given') do
      tri_check = TriangleChecker.new(3, 4, 5)
      expect(tri_check.get_triangle()).to(eq("Scalene"))
    end

    it('returns what type of triangle is given') do
      triCheck = TriangleChecker.new(3, 4, 4)
      expect(triCheck.get_triangle()).to(eq("Isosceles"))
    end
  end
end