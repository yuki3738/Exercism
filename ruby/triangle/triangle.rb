class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
    @side_sum = sides.inject(:+)
  end

  def equilateral?
    sides.uniq.one? if triangle?
  end

  def isosceles?
    sides.uniq.count == 2 || equilateral? if triangle?
  end

  def scalene?
    return false if isosceles?
    sides.uniq.count == 3 if triangle?
  end

  def triangle?
    sides.all? { |side| side > 0 } && sides.all? { |side| (@side_sum - side) >= side }
  end
end