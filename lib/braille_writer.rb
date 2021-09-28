require_relative 'dictionary'
require_relative 'night_reader'
# require 'simplecov'
# SimpleCov.start

class BrailleWriter
  include Dictionary

  def translate(characters)
    characters = characters.split('')
    translate_array = []
    characters.each do |character|
      if character.ord.between?(48, 57)
        translate_array << numbers_to_braille['#']
        translate_array << numbers_to_braille[character]
      else
        translate_array << letters_to_braille[character.downcase]
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
