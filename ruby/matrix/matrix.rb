class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @rows ||= matrix.lines.map { |line| line_to_row(line) }
  end

  def columns
    rows.transpose
  end

  private

  def line_to_row(line)
    line.split.map(&:to_i)
  end
end
