require 'pry'

class Fixnum
  def to_roman
    final = []
    prepped_number = number_prep(self)
    prepped_number.each_with_index do |string_number, index|
      final << convert(string_number.to_i, index)
    end
    final.reverse.join
  end

  def number_prep(number)
    self.to_s.chars.reverse
  end

  def convert(part, index)
    case index
    when 0
      convert_ones_place(part)
    when 1
      convert_tens_place(part)
    when 2 
      convert_hundreds_place(part)
    when 3
      convert_thousands_place(part)
    else
      "Roman numerals don't really go that high"
    end
  end

  def convert_ones_place(number)
    converted = ''
    case number
    when 1,2,3
      number.times { converted += 'I' } 
    when 4
      converted += 'IV'
    when 5
      converted += 'V'
    when 6,7,8
      converted = 'V'
      (number - 5).times { converted += 'I' } 
    when 9
      converted = 'IX'
    else
      'something has gone v wrong'
    end
    converted
  end

  def convert_tens_place(number)
    converted = ''
    case number
    when 1,2,3
      number.times { converted += 'X' }
    when 4
      converted = 'XL'
    when 5
      converted = 'L'
    when 6,7,8
      converted = 'L'
      (number - 5).times { converted += 'X' }
    when 9
      converted = 'XC'
    else
      'something has gone v v wrong'
    end
    converted
  end

  def convert_hundreds_place(number)
    converted = ''
    case number
    when 1,2,3
      number.times { converted += 'C' }
    when 4
      converted = 'CD'
    when 5
      converted = 'D'
    when 6,7,8
      converted = 'D'
      (number - 5).times { converted += 'C' }
    when 9
      converted = 'CM'
    else
      'bad things are happening'
    end
    converted
  end

  def convert_thousands_place(number)
    converted = ''
    number.times { converted += 'M' }
    converted
  end
end

module BookKeeping
  VERSION = 2
end
