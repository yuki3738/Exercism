class Series
  attr_reader :digits_ary

  def initialize(digits)
    @digits_ary = digits.chars
  end

  def slices(n)
    raise ArgumentError if n > digits_ary.length

    digits_ary.each_cons(n).map(&:join)
  end
end
