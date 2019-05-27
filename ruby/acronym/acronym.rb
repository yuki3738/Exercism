class Acronym
  def self.abbreviate(words)
    words.scan(/\b[[:alpha:]]/).join.upcase
  end
end
