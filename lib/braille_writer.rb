require_relative 'dictionary'

class BrailleWriter
  include Dictionary

  def translate(characters)
    characters = characters.split('')
    translate_array = []
    characters.each do |character|
      if character.ord.between?(48, 57)
        translate_array << number_keys['#']
        translate_array << number_keys[character]
      else
        translate_array << letter_keys[character]
      end
    end
    translate_array
  end
  
  def translate_back(chars)
    chars.map do |char|
      braille_keys[char]
    end.join
  end
end
