class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @latest ||= scores.last
  end

  def personal_best
    @personal_best ||= personal_top_three.first
  end

  def personal_top_three
    @personal_top_three ||= scores.max(3)
  end
end
