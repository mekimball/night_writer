require_relative 'braille_dictionary'
require 'simplecov'
SimpleCov.start

class BrailleReader
  include BrailleDictionary

  def translate_back(characters)
    characters.map do |character|
      if braille_to_letters[character].nil?
        numbers_to_braille[character]
      else
        braille_to_letters[character]
      end
    end.join
  end
end
