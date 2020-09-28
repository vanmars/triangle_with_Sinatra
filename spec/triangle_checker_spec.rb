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
end

 
# describe("#basic_anagram") do
#   it('checks whether two case-matching words are anagrams') do
#     lower_checker = AnagramChecker.new("cat", "act")
#     expect(lower_checker.basic_anagram()).to(eq("they are anagrams"))
#   end
# end