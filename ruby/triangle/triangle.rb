class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    sides.uniq.one? if triangle?
  end

  def isosceles?
    sides[1] == sides[2] if triangle?
  end

  def scalene?
    return false if isosceles?
    sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2] if triangle?
  end

  def triangle?
    sides.sort!
    return sides.all? { |side| side > 0 } && sides[0] + sides[1] > sides[2]
  end
end