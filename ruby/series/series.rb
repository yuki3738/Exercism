class Series
  def initialize(digits)
    @digits = digits.chars
  end

  def slices(n)
    raise ArgumentError unless n <= digits.length

    digits.each_cons(n).map(&:join)
  end

  private

  attr_reader :digits
end
