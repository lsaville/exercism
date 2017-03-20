class Complement
  def self.of_dna(nucleic_acid)
    sequence = nucleic_acid.chars.map do |acid|
      if nucleic_pairs[acid]
        nucleic_pairs[acid]
      else
        break ''
      end
    end
    sequence == '' ? sequence : sequence.join
  end

  def self.nucleic_pairs
    {
     'C' => 'G',
     'G' => 'C',
     'A' => 'T',
     'T' => 'A',
     'A' => 'U'
    }
  end
end

class BookKeeping
  VERSION = 4
end
