require 'pry'
class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    return [] if number == 1
    set = (2..number).to_a
    filter(set)
  end

  def filter(set)
    count = 0 
    loop do
      return set if count == set.length
      sieve = set[count]
      set.select! do |num|
        num == sieve || num % sieve != 0
      end
      count += 1
    end
  end
end

module BookKeeping
  VERSION = 1
end
