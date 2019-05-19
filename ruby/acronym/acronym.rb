class Acronym
  def self.abbreviate(string)
    string.split(/\s|-/).reject(&:empty?).map(&:capitalize).map{|s| s[0]}.join
  end
end
