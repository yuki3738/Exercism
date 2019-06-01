class Pangram
  def self.pangram?(sentence)
    sentence.split(/[^[:alpha:]]/).sort.uniq.join.lstrip == ('a'..'z').to_a.join
  end
end
