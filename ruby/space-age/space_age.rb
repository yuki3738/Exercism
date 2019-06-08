class SpaceAge
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
    calc_age
  end

  def on_mercury
    calc_age(0.2408467)
  end

  def on_venus
    calc_age(0.61519726)
  end

  def on_mars
    calc_age(1.8808158)
  end

  def on_jupiter
    calc_age(11.862615)
  end

  def on_saturn
    calc_age(29.447498)
  end

  def on_uranus
    calc_age(84.016846)
  end

  def on_neptune
    calc_age(164.79132)
  end

  private

  def calc_age(orbital_period = 1)
    seconds / 60 / 60 / 24 / (365.25 * orbital_period)
  end
end