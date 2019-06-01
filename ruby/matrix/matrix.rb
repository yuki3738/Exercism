class Matrix
  attr_reader :string_with_newlines

  def initialize(string_with_newlines)
    @string_with_newlines = string_with_newlines
  end

  def rows
    @rows ||= to_i_ary(string_with_newlines.split("\n").map(&:split))
  end

  def columns
    rows.transpose
  end

  private

  def to_i_ary(ary)
    ary.map { |a| a.map(&:to_i) }
  end
end
