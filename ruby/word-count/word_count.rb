class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    ary = phrase.gsub(/!|&|@|\$|%|\^|&| '|' |,|\.|:/, ' ').split.map(&:downcase)

    ary.each_with_object({}) do |item, result|
      result[item] = ary.count(ary[ary.index(item)])
    end
  end
end