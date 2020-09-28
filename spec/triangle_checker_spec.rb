require('triangle_checker')
require('rspec')

describe TriangleChecker do
  
  describe('#initialize') do
    it('checks whether the sides are assigned when a new TriangleChecker is initialized') do
      triCheck = TriangleChecker.new(3,4,5)
      expect(triCheck.side1).to(eq(3))
      # expect(triCheck[@side2]).to(eq(4))
      # expect(triCheck[@side3]).to(eq(5))
    end
  end

  describe('#is_equilateral?') do
    it('checks whether a triangle is equilateral') do
      triCheck = TriangleChecker.new(3,4,5)
      expect(triCheck.is_equilateral?()).to(eq(false))
    end
  end

  describe('#is_not_a_triangle?') do
    it('checks if a triangle is not a triangle') do
      triCheck = TriangleChecker.new(2,2,100)
      expect(triCheck.is_not_a_triangle?()).to(eq(true))
    end
  end

  describe('#is_isosceles?') do
    it('checks if a triangle is isosceles') do
      triCheck = TriangleChecker.new(3,3,4)
      expect(triCheck.is_isosceles?()).to(eq(true))
    end
  end
end

 
# describe("#basic_anagram") do
#   it('checks whether two case-matching words are anagrams') do
#     lower_checker = AnagramChecker.new("cat", "act")
#     expect(lower_checker.basic_anagram()).to(eq("they are anagrams"))
#   end
# end