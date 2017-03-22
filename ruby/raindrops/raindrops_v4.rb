require 'pry'
class Raindrops
  NUMBER_TO_WORD = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    NUMBER_TO_WORD.each_with_object('') do |(test_number, rain_word), rain_speak|
      rain_speak << rain_word if (number % test_number).zero?
    end
    rain_speak.empty? ? number.to_s : rain_speak
  end
end

module BookKeeping
  VERSION = 3
end
