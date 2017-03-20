class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum(number) ** 2
  end

  def sum_of_squares
    sum_squares(number)
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
    def sum(number)
      if number == 0
        return 0
      elsif number == 1
        return 1
      else
        return number + sum(number - 1)
      end
    end

    def sum_squares(number)
      if number == 0
        return 0
      elsif number == 1 
        return 1
      else
        return number ** 2 + sum_squares(number - 1)
      end
    end
end

module BookKeeping
  VERSION = 3
end
