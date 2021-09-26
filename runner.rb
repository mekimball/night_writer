require './lib/dictionary'
require './lib/braille_writer'

braille = BrailleWriter.new
include Dictionary
# require 'pry'; binding.pry
first_arg, second_arg = ARGV
first_lines = File.readlines(first_arg)
 test = braille.translate(first_lines.join)

new_file = File.open(second_arg, 'w') do |f|
  f.write test
  # IO.copy_stream(test, second_arg)
end

second_lines = File.readlines(second_arg)
line_count = second_lines.size
text = second_lines.join
total_characters = text.length

split_array = first_lines.join.split('')
p "Created #{second_arg} containing #{total_characters} characters"
