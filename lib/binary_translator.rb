class Translator
  def initialize
    @binary_values = {"a" => "01100001",
      "b" => "01100010",
      "c" => "01100011",
      "d" => "01100100",
      "e" => "01100101",
      "f" => "01100110",
      "g" => "01100111",
      "h" => "01101000",
      "i" => "01101001",
      "j" => "01101010",
      "k" => "01101011",
      "l" => "01101100",
      "m" => "01101101",
      "n" => "01101110",
      "o" => "01101111",
      "p" => "01110000",
      "q" => "01110001",
      "r" => "01110010",
      "s" => "01110011",
      "t" => "01110100",
      "u" => "01110101",
      "v" => "01110110",
      "w" => "01110111",
      "x" => "01111000",
      "y" => "01111001",
      "z" => "01111010",
      "A" => "01100001",
      "B" => "01100010",
      "C" => "01100011",
      "D" => "01100100",
      "E" => "01100101",
      "F" => "01100110",
      "G" => "01100111",
      "H" => "01101000",
      "I" => "01101001",
      "J" => "01101010",
      "K" => "01101011",
      "L" => "01101100",
      "M" => "01101101",
      "N" => "01101110",
      "O" => "01101111",
      "P" => "01110000",
      "Q" => "01110001",
      "R" => "01110010",
      "S" => "01110011",
      "T" => "01110100",
      "U" => "01110101",
      "V" => "01110110",
      "W" => "01110111",
      "X" => "01111000",
      "Y" => "01111001",
      "Z" => "01111010"
      }
      @word_sequence = []

  end

  def translate(roman_character)
    @binary_values[roman_character]
  end

  def translate_capitals(capital_character)
    lower_case = capital_roman_character.downcase
    @binary_values[lower_case]
  end

  def translate_non_letters(non_letter)
    if non_letter != @binary_values.keys
    puts ""
    end
  end

  def translate_returns_correct_binary_word(roman_characters)
    roman_characters.each do |character|
      @word_sequence << character
    end
    return @word_sequence
    @word_sequence.each do |element|
      @word_collection << @binary_values[element]
    end
    return @word_collection
  end
end
