require_relative 'braille_dictionary'
require_relative 'braille_reader'

english = BrailleReader.new
include BrailleDictionary
first_arg, second_arg = ARGV
first_lines = File.readlines(first_arg) #read each line
test = []
test << first_lines
# test << english.translate_back(first_lines.join)
require 'pry'; binding.pry