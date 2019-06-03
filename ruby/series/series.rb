class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError if n > digits.length

    slices = []
    digits.split('').each_cons(n) do |digit|
      slices << digit
    end
    slices.map do |slice|
      slices.join
    end
  end
end
