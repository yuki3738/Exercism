class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    if @scores.sort!.first.zero?
      @scores[1]
    else
      @scores.first
    end
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse.first(3)
  end
end
