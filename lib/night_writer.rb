require_relative 'english_dictionary'
require_relative 'braille_writer'

braille = BrailleWriter.new
include Dictionary
first_arg, second_arg = ARGV
first_lines = File.readlines(first_arg)
test = braille.puts_braille(first_lines.join)
length = test.transpose
length.filter_map do |array|
  length << array[40..-1] unless array.nil?
end

new_file = File.open(second_arg, 'w') do |f|
  length.compact.each do |element|
    f.write "#{element[0..39].join}\n"
  end
end

second_lines = File.readlines(second_arg)
line_count = second_lines.size
text = second_lines.join
total_characters = text.length

split_array = first_lines.join.split('')
p "Created #{second_arg} containing #{total_characters} characters"
