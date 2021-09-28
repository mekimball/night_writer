require_relative 'braille_dictionary'
require_relative 'braille_reader'

include BrailleDictionary
  english = BrailleReader.new
  first_arg, second_arg = ARGV
  first_lines = File.readlines(first_arg) 
  if first_lines.length > 3
    first_lines = (first_lines[0] + first_lines[3]), (first_lines[1] + first_lines[4]), (first_lines[2] + first_lines[5])
  end
  test = []
  test << first_lines.join.scan(/../)

  new_file = File.open(second_arg, 'w') do |f|
  braille_array = test.flatten.each_slice(test.flatten.length / 3).to_a.transpose
    braille_array.each do |array|
      f.write "#{english.translate_back([array])}"
    end
  end

second_lines = File.readlines(second_arg)
line_count = second_lines.size
text = second_lines.join
total_characters = text.length

split_array = first_lines.join.split('')
"Created #{second_arg} containing #{total_characters} characters"