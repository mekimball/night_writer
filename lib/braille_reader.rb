require_relative 'braille_dictionary'

class BrailleReader
  include BrailleDictionary

  def translate_back(characters)
    characters.map do |character|
      braille_dictionary[character]
    end.join
  end
end
