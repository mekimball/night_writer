require_relative 'braille_dictionary'
require_relative 'braille_reader'

class NightReader
  include BrailleDictionary

  def initialize
    @english = BrailleReader.new
    @first_arg = ARGV[0]
    @second_arg = ARGV[1]
    @first_lines = File.readlines(@first_arg)
    @test = []
    require 'pry'
    binding.pry
  end
  # first_arg, second_arg = ARGV
  # @test << @first_lines.join.scan(/../)
  # braille_array = @test.flatten.each_slice(@test.flatten.length / 3).to_a.transpose
  # braille_array.each do |array|
    @english #duhhhhh
  # end
end
NightReader.new
