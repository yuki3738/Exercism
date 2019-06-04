class Series
  attr_reader :digits_ary

  def initialize(digits)
    @digits_ary = digits.chars
  end

  def slices(n)
    raise ArgumentError if n > digits_ary.length

    slices = []
    digits_ary.each_cons(n) do |digit|
      slices << digit
    end
    slices.map do |slice|
      slice.join
    end
  end
end
