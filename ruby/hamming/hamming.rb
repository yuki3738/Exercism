class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.size == strand_two.size

    ary = []
    strand_one.chars.each_with_index{ |s, i| ary << (s == strand_two.chars[i]) }
    ary.count(false)
  end
end