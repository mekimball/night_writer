require_relative 'dictionary'

class BrailleWriter
  include Dictionary

  def translate(character)
    translate_array = []
    if character.ord.between?(48, 57)
      translate_array << number_keys['#']  
      translate_array << number_keys[character]
    else
      translate_array << letter_keys[character]
    end
  end
end
