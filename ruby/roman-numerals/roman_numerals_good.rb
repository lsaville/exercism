class Fixnum
  def numeral_converter
    {
      1000 => 'M',
      900  => 'CM',
      500  => 'D',
      400  => 'CD',
      100  => 'C',
      90   => 'XC',
      50   => 'L',
      40   => 'XL',
      10   => 'X',
      9    => 'IX',
      5    => 'V',
      4    => 'IV',
      1    => 'I'
    }
  end

  def to_roman
    number = self

    numeral_converter.reduce('') do |converted_numeral, (decompositor, conversion)|
      multiplier = number / decompositor
      number = number % decompositor

      converted_numeral << conversion * multiplier
    end
  end
end

module BookKeeping
  VERSION = 2
end
