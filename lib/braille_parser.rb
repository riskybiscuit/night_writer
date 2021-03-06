require 'pry'
class BrailleParser
  attr_reader :parsed_braille
  def parse(braille)
    if braille.length < 12
      @parsed_braille = braille.chars.each_slice(2).map(&:join)
    else
      letter_isolation = braille.chars.each_slice(6).map(&:join)
      @parsed_braille = letter_isolation.map do |letter|
        letter.chars.each_slice(2).map(&:join)
      end
    end
  end
end
