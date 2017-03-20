require 'pry'
class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError, "Strands must be indentical in length" unless strand_a.length == strand_b.length
    mismatches = 0
    strand_a.chars.each_with_index do |letter, index|
      mismatches += 1 if letter != strand_b[index]
    end
    mismatches
  end
end
