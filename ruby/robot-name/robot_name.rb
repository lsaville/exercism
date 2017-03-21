class Robot
  attr_reader :name
  
  @@taken_names = []

  def initialize
    @name = name_creator
  end

  def reset
    @name = name_creator
  end

  def letters
    ('A'..'Z').to_a
  end

  def numbers
    ('0'..'9').to_a
  end

  def name_creator
    name = construct_name
    if @@taken_names.include?(name)
      name_creator
    else
      @@taken_names << name
      name
    end
  end

  def construct_name
    name = ''
    2.times { name << letters.sample }
    3.times { name << numbers.sample }
    name
  end
end

module BookKeeping
  VERSION = 2
end
