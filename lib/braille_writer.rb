require_relative 'english_dictionary'
require 'simplecov'
SimpleCov.start

class BrailleWriter
  include Dictionary

  def translate(characters)
    characters = characters.split('')
    translate_array = []
    characters.each do |character|
      if character.ord.between?(48, 57)
        translate_array << numbers_to_braille['#']
        translate_array << numbers_to_braille[character]
      elsif character.upcase == character
        translate_array << letters_to_braille['upcase']
        translate_array << letters_to_braille[character.downcase]
      else
        translate_array << letters_to_braille[character]
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
