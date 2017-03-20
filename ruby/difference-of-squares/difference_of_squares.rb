class Squares
  attr_reader :number
  
  def initialize(number)
    @number = number
  end

  def square_of_sum
    0.upto(number).reduce(:+) ** 2
  end

  def sum_of_squares
    0.upto(number).reduce do |total, num|
      total += num ** 2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
