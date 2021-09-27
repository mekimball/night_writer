require_relative 'braille_dictionary'

class BrailleReader
  include BrailleDictionary

  def translate_back(characters)
    characters.map do |character|
      if braille_to_letters[character].nil?
        braille_to_numbers[character]
      else
        braille_to_letters[character]
      end
    end.join
  end
end
