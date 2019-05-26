class ResistorColorDuo
  BAND_COLORS = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }.freeze

  def self.value(colors)
    colors.map { |color| BAND_COLORS[color.to_sym] }.join.to_i
  end
end
