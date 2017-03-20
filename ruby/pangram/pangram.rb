class Pangram
  def self.pangram?(phrase)
    return false if phrase == ''
    phrase = phrase.scan(/[a-z]|[A-Z]/).uniq!
    phrase.length == 26 ? true : false
  end
end

module BookKeeping
  VERSION = 4
end
