class Raindrops
  def self.convert(number)
    rain_speak = ''
    rain_speak << check_three(number)
    rain_speak << check_five(number)
    rain_speak << check_seven(number)
    rain_speak == '' ? number.to_s : rain_speak
  end

  def self.check_three(number)
    number % 3 == 0 ? 'Pling' : ''
  end

  def self.check_five(number)
    number % 5 == 0 ? 'Plang' : ''
  end

  def self.check_seven(number)
    number % 7 == 0 ? 'Plong' : ''
  end
end

module BookKeeping
  VERSION = 3
end
