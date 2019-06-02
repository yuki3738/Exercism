class Pangram
  def self.pangram?(sentence)
    sentence.split(/[^[:alpha:]]/).join.downcase.split('').sort.uniq.join.lstrip == ('a'..'z').to_a.join
  end
end
