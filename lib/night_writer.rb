require_relative 'dictionary'
require_relative 'braille_writer'

class NightWriter
  include Dictionary
  attr_reader :braille

  def initialize
    @braille = BrailleWriter.new
    @first_arg = ARGV[0]
    @second_arg = ARGV[1]
    @first_lines = File.readlines(@first_arg)
    @test = @braille.puts_braille(@first_lines.join)
    @length = @test.transpose
  end

  # first_arg, second_arg = ARGV
  # require 'pry'; binding.pry
  # first_lines = File.readlines(first_arg)
  # test = braille.puts_braille(first_lines.join)
  # length = test.transpose

  def array_length
    # test = @braille.puts_braille(@first_lines.join)
    # length = test.transpose
    @length.filter_map do |array|
      @length << array[40..-1] unless array.nil?
    end
  end

  def braille_transfer
    new_file = File.open(@second_arg, 'w') do |f|
      @length.compact.each do |element|
        f.write "#{element[0..39].join}\n"
      end
    end
  end

  # second_lines = File.readlines(second_arg)
  # line_count = second_lines.size
  # text = second_lines.join
  # total_characters = text.length

  # split_array = first_lines.join.split('')
  # p "Created #{second_arg} containing #{total_characters} characters"
end
NightWriter.new
