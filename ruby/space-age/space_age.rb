class SpaceAge
  ORBITAL_PERIOD = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  ORBITAL_PERIOD.each do |planet, earth_years|
    define_method :"on_#{planet}" do
      calc_age(earth_years)
    end
  end

  private

  attr_reader :seconds

  def calc_age(earth_years)
    seconds / 60 / 60 / 24 / (365.25 * earth_years)
  end
end