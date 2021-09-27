require './lib/dictionary'
require './lib/braille_writer'

braille = BrailleWriter.new
include Dictionary
# require 'pry'; binding.pry
first_arg, second_arg = ARGV
first_lines = File.readlines(first_arg)
 test = braille.puts_braille(first_lines.join)
 

new_file = File.open(second_arg, 'w') do |f|
  # f.write test
  test.transpose.each do |element|
      f.write "#{element.join}\n"
  end
end

second_lines = File.readlines(second_arg)
line_count = second_lines.size
text = second_lines.join
total_characters = text.length

split_array = first_lines.join.split('')
p "Created #{second_arg} containing #{total_characters} characters"
