class Acronym
  def self.abbreviate(words)
    words.scan(/\b[a-zA-Z]/).map(&:capitalize).join
  end
end
