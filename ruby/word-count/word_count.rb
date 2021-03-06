class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object({}) do |item, result|
      result[item] = words.count(item)
    end
  end

  def words
    phrase.scan(/\b[\w']+\b/).map(&:downcase)
  end
end