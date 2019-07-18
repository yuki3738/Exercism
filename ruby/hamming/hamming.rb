class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.size == strand_two.size

    strand_one.chars.each_with_index.count { |s, i| s != strand_two.chars[i] }
  end
end