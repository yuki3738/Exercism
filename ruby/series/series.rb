class Series
  def initialize(digits)
    @digits = digits.chars
  end

  def slices(n)
    unless n > digits.length
      digits.each_cons(n).map(&:join)
    else
      raise ArgumentError
    end
  end

  private

  attr_reader :digits
end
