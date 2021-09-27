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
        translate_array << letter_keys[character.downcase]
      end
    end
    translate_array
  end

  def puts_braille(characters)
    braille_array = translate(characters)
    braille_array.each do |element|
      test = element.zip
      test.map do |element|
        element
      end
    end
  end
end
